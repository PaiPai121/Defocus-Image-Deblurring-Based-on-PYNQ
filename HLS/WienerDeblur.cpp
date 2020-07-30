/*
learned from The canny_edge IP
*/
#include "WienerDeblur.h"

void MatrixMultiply(cmpxData m1[512][512],cmpxData m2[512][512],cmpxData out[512][512]){
#pragma HLS ARRAY_RESHAPE variable = a complete dim = 0
#pragma HLS ARRAY_RESHAPE variable = b complete dim = 0
	for(int r = 0;r<512;r++)
	{
#pragma HLS PIPELINE rewind
		for(int c = 0;c<512;c++ ){
#pragma HLS UNROLL
			out[r][c] = m1[r][c]*m2[r][c];
		}
	}
}


void WienerDeblur(wide_stream* in_stream, wide_stream* out_stream, ap_uint<32> rows, ap_uint<32> cols){//, int threshold1, int threshold2){
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
	static cmpxData middle[row][col];	//FFT middle data
	static cmpxData multres[row][col]; //mutiple result
	cmpxData in[col];
	cmpxData out[col];

	GRAY_IMAGE src_bw(rows, cols);
	GRAY_IMAGE src1(rows, cols);
	GRAY_IMAGE src2(rows, cols);
	GRAY_IMAGE res(rows, cols); //test

	GRAY_PIXEL pixel_gd1;
	GRAY_PIXEL pixel_gd2;
	GRAY_PIXEL element_pixel;

	config_t fft_config1;	//���������ã�
	status_t fft_status1;	//�����״̬��

	///////////////     Kernel FFT后的数据          //////////////
	static float Ker_Real[row][col] ={
#include "kernelReal.dat"
	};
	static float Ker_Imag[row][col] ={
#include "kernelImag.dat"
	};
	////// 这里很奇怪如果用const就会报错

	static cmpxData Ker_F[row][col];
	cmpxData temp;
	for (int r = 0;r<row;r++){
		for(int c = 0;c<col;c++){
//			printf("Real :%f\n", Ker_Real[r][c]);
//			printf("Imag :%f\n", Ker_Imag[r][c]);
//			printf("Real :%f , Imag:%f \n",Ker_Real[r][c],Ker_Imag[r][c]);
			Ker_F[r][c].real(Ker_Real[r][c]);
			Ker_F[r][c].imag(Ker_Imag[r][c]);
		}
	}
	///////////////////////////////////////////////

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


    bool ovflo;

    //  进行二维fft
    // 行遍历
    for (int r = 0; r < rows ; r++){
    	//写入向量
		for (int c = 0; c < cols ; c++){
			xn_input[c].real( xn1[r][c].real() );
			xn_input[c].imag( xn1[r][c].imag() );
			//printf("in %d num %f \n",i,xn_input[i].real());
		   }
		fft_top(0, xn_input, xk_output, &ovflo);
		//从向量读出
		for (int c = 0; c < cols ; c++){
			middle[r][c].real(xk_output[c].real());
			middle[r][c].imag(xk_output[c].imag());
			//printf("in %d num %f \n",i,xn_input[i].real());
		}
    }

    // 列遍历
    for (int c = 0; c < cols ; c++){
    	//写入向量
		for (int r = 0; r < rows ; r++){
			xn_input[r].real( middle[r][c].real() );
			xn_input[r].imag( middle[r][c].imag() );
			//printf("in %d num %f \n",i,xn_input[i].real());
		   }
		fft_top(0, xn_input, xk_output, &ovflo);
		//从向量读出
		for (int r = 0; r < rows ; r++){
			xk1[r][c].real(xk_output[r].real());
			xk1[r][c].imag(xk_output[r].imag());
			//printf("in %d num %f \n",i,xn_input[i].real());
		}
    }

    //////////////////////////////////////////////////////////////////
    //////////////////// Matrix Multiply /////////////////////////////
    MatrixMultiply(Ker_F,xk1,xn1);



    //////////////////////////////////////////////////////////////////

    // 进行二维ifft
    // 行遍历
    for (int r = 0; r < rows ; r++){
    	//写入向量
		for (int c = 0; c < cols ; c++){
			xn_input[c].real( xn1[r][c].real() );
			xn_input[c].imag( xn1[r][c].imag() );
			//printf("in %d num %f \n",i,xn_input[i].real());
		   }
		fft_top(1, xn_input, xk_output, &ovflo);
		//从向量读出
		for (int c = 0; c < cols ; c++){
			middle[r][c].real(xk_output[c].real());
			middle[r][c].imag(xk_output[c].imag());
			//printf("in %d num %f \n",i,xn_input[i].real());
		}
    }

    // 列遍历
    for (int c = 0; c < cols ; c++){
    	//写入向量
		for (int r = 0; r < rows ; r++){
			xn_input[r].real( middle[r][c].real() );
			xn_input[r].imag( middle[r][c].imag() );
			//printf("in %d num %f \n",i,xn_input[i].real());
		   }
		fft_top(1, xn_input, xk_output, &ovflo);
		//从向量读出
		for (int r = 0; r < rows ; r++){
			xk1[r][c].real(xk_output[r].real());
			xk1[r][c].imag(xk_output[r].imag());
			//printf("in %d num %f \n",i,xn_input[i].real());
		}
    }

	for(int r = 0; r < rows; r++)
	{
		for(int c = 0; c < cols; c++)
		{
			element_pixel.val[0] = xk1[r][c].real();
//			printf("%d\n",element_pixel.val[0]);
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
