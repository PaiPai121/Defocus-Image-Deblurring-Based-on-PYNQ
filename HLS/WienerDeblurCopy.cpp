/*
learned from The canny_edge IP
*/
#include "WienerDeblur.h"


void fft_2d(bool direction,
		 cmpxData in[FFT_LENGTH][FFT_LENGTH],
		 cmpxData out[FFT_LENGTH][FFT_LENGTH],
		 bool* ovflo)
{
    cmpxData xn_buffer[FFT_LENGTH];
    cmpxData xk_buffer[FFT_LENGTH];
    static cmpxData middle[FFT_LENGTH][FFT_LENGTH];
    int rows =FFT_LENGTH;
    int cols = FFT_LENGTH;
    // 行遍历
       for (int r = 0; r < rows ; r++){
       	//写入向量
   		for (int c = 0; c < cols ; c++){
   			xn_buffer[c] = in[r][c];
//   			printf("in %d num %f \n",c,xn_buffer[c].real());
   		   }
   		fft_top(direction, xn_buffer, xk_buffer, ovflo);
   		//从向量读出
   		for (int c = 0; c < cols ; c++){
   			middle[r][c] = xk_buffer[c];
//   			printf("out %d real %f imag %f \n",c,xn_buffer[c].real(),xn_buffer[c].imag());
   		}
       }

       // 列遍历
          for (int c = 0; c < cols ; c++){
          	//写入向量
      		for (int r = 0; r < rows ; r++){
      			xn_buffer[r] = middle[r][c];
      			//printf("in %d num %f \n",i,xn_input[i].real());
      		   }
       		fft_top(direction, xn_buffer, xk_buffer, ovflo);
      		//从向量读出
      		for (int r = 0; r < rows ; r++){
      			out[r][c] = xk_buffer[r];
//      			printf("out %d real %f imag %f \n",r,xn_buffer[r].real(),xn_buffer[r].imag());
      		}
          }
}


void WienerDeblur(wide_stream* in_stream, wide_stream* out_stream, ap_uint<32> rows, ap_uint<32> cols){
#pragma HLS INTERFACE axis port=in_stream bundle=INPUT
#pragma HLS INTERFACE axis port=out_stream bundle=OUTPUT

#pragma HLS INTERFACE s_axilite port=rows bundle=CONTROL_BUS offset=0x14 clock=AXI_LITE_clk
#pragma HLS INTERFACE s_axilite port=cols bundle=CONTROL_BUS offset=0x1C clock=AXI_LITE_clk
#pragma HLS INTERFACE s_axilite port=return bundle=CONTROL_BUS clock=AXI_LITE_clk

#pragma HLS INTERFACE ap_stable port=rows
#pragma HLS INTERFACE ap_stable port=cols




	bool direction = 1;
 	const int row = 512;
	const int col = 512;
	static cmpxData xn1[row][col];	//FFT input data
	static cmpxData xk1[row][col];	//FFT output data
	static cmpxData xn2[row][col];	//FFT middle data
	cmpxData in[col];
	cmpxData out[col];
	bool ovflo;
	GRAY_IMAGE src_bw(rows, cols);
	GRAY_IMAGE src1(rows, cols);
	GRAY_IMAGE src2(rows, cols);
	GRAY_IMAGE res(rows, cols); //test

	GRAY_PIXEL pixel_gd1;
	GRAY_PIXEL pixel_gd2;
	GRAY_PIXEL element_pixel;

	config_t fft_config1;	//���������ã�
	status_t fft_status1;	//�����״̬��


///////////////////create  conv kernel /////////////////////////////
	const int r = 10;
	static cmpxData kernel[r][r];
	static cmpxData F_kernel[r][r];
	int dr2 = 0;
	float gaussp = 0;
	float summat = 0;
	float newreal = 0;
	for (int i=0;i<(2*r+1);i++)
	{
		for(int j = 0; j<(2*r+1);j++)
		{
			dr2 = 2*(r^2);
			gaussp = exp( -((i-r)^2 + (j-r)^2) / (dr2)  );
			kernel[i][j].real(gaussp);
			summat += gaussp;
		}
	}

	for (int i=0;i<(2*r+1);i++)
	{
		for(int j = 0; j<(2*r+1);j++)
		{
			newreal = kernel[i][j].real()/summat;
			kernel[i][j].real(newreal);
		}
	}

	/*     Calculate FFt of kernel       */



	// fft_top(bool(0), kernel, F_kernel, &ovflo);
//////////////////////////////////////////////


#pragma HLS dataflow
	const int col_packets = cols/4;
	const int packets = col_packets*rows;
	const int pixel_cnt = rows*cols;

	for(int r = 0; r < packets; r++){
	#pragma HLS pipeline II=4
		ap_uint<32> dat = in_stream->data;
		src_bw.write(GRAY_PIXEL(dat.range(7,0)));
		src_bw.write(GRAY_PIXEL(dat.range(15,8)));
		src_bw.write(GRAY_PIXEL(dat.range(23,16)));
		src_bw.write(GRAY_PIXEL(dat.range(31,24)));
		++in_stream;
	}

	hls::Duplicate( src_bw, src1, src2 );

	for(int r = 0; r < rows; r++)
	{
		for(int c = 0; c < cols; c++)
		{
			src1 >> pixel_gd1;
			xn1[r][c].real(pixel_gd1.val[0]);
		}
	}


	const int SAMPLES = (1 << FFT_NFFT_MAX);

    static cmpxData xn_input[SAMPLES];
    static cmpxData xk_output[SAMPLES];


    direction = 0;
    //  进行二维fft
    fft_2d(0,xn1,xk1,&ovflo);

    // 进行二维ifft
    fft_2d(1,xk1,xn2,&ovflo);


	for(int r = 0; r < rows; r++)
	{
		for(int c = 0; c < cols; c++)
		{
			element_pixel.val[0] = xn2[r][c].real()*100;
			//printf("r:%d,c:%d, pixel: %f \n",r,c,element_pixel);
			res << element_pixel;
		}
	}


    for(int r = 0; r < rows; r++){
    #pragma HLS pipeline II=4
		for(int c = 0; c < col_packets; c++){
			ap_uint<32> dat;
			dat.range(7,0) = res.read().val[0];
			dat.range(15,8) = res.read().val[0];
			dat.range(23,16) = res.read().val[0];
			dat.range(31,24) = res.read().val[0];
			out_stream->data = dat;
			out_stream->user = (r == 0 && c == 0)? 1: 0;
			out_stream->last = (r == rows-1 && c == col_packets-1)? 1: 0;
			++out_stream;
		}
	}
}

