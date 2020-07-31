/*
learned from The canny_edge IP
*/
#include "WienerDeblur.h"
#include <complex>
#include <cmath>

void WienerDeblur(wide_stream* in_stream, wide_stream* out_stream, ap_uint<32> rows, ap_uint<32> cols){
#pragma HLS INTERFACE axis port=in_stream bundle=INPUT
#pragma HLS INTERFACE axis port=out_stream bundle=OUTPUT

#pragma HLS INTERFACE s_axilite port=rows bundle=CONTROL_BUS offset=0x14 clock=AXI_LITE_clk
#pragma HLS INTERFACE s_axilite port=cols bundle=CONTROL_BUS offset=0x1C clock=AXI_LITE_clk
#pragma HLS INTERFACE s_axilite port=return bundle=CONTROL_BUS clock=AXI_LITE_clk

#pragma HLS INTERFACE ap_stable port=rows
#pragma HLS INTERFACE ap_stable port=cols

	bool direction = 0;
 	const int row = 256;
	const int col = 256;
	static cmpxData xn1[row][col];	//FFT input data
	static cmpxData xk1[row][col];	//FFT output data
	static cmpxData middle[row][col];	//FFT middle data
	static cmpxData xn2[row][col];	//FFT input data
	static cmpxData xk2[row][col];	//FFT output data
	static cmpxData middle2[row][col];	//FFT middle data
	cmpxData in[FFT_LENGTH];
	cmpxData out[FFT_LENGTH];
	cmpxData fft_kernel[Kernel_Size][Kernel_Size];

	GRAY_IMAGE src_bw(rows, cols);
	GRAY_IMAGE src1(rows, cols);
	GRAY_IMAGE src2(rows, cols);
	GRAY_IMAGE res(rows, cols); //test

	GRAY_PIXEL pixel_gd1;
	GRAY_PIXEL pixel_gd2;
	GRAY_PIXEL element_pixel;

	config_t fft_config1;	//（输入配置）
	status_t fft_status1;	//（输出状态）


	float k = 100000000;
	int coef = 54;
	data_t kernel[Kernel_Size][Kernel_Size] = {{0}};

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
	/***********get FFT_array(2D FFT)**************/
	bool ovflo;
	//傅里叶正变换（行）
	for(int r = 0; r < rows; r++)
	{
		for(int c = 0; c < cols; c++)
		{
			in[c].real(xn1[r][c].real());
			in[c].imag(xn1[r][c].imag());
			//in[c] = xn1[r][c];
			//printf("in %d num %f \n",c,in[c].real());
		}
		fft_top(direction,in,out,&ovflo);
		for(int c = 0; c < cols; c++)
		{
			middle[r][c].real(out[c].real()/col);
			middle[r][c].imag(out[c].imag()/col);
			//middle[r][c] = out[c];
			//printf("in	%d	real: %f	image: %f \n",r,out[c].real(),out[c].imag());
		}
	}
	//傅里叶正变换（列）
	for(int c = 0; c < cols; c++)
	{
		for(int r = 0; r < rows; r++)
		{
			in[r].real(middle[r][c].real());
			in[r].imag(middle[r][c].imag());
			//in[r] = middle[r][c];
		}
		fft_top(direction,in,out,&ovflo);
		for(int r = 0; r < rows; r++)
		{
			xk1[r][c].real(out[r].real()/col);
			xk1[r][c].imag(out[r].imag()/col);
			//xk1[r][c] = out[r];
			printf("fft : xk1	%d	real: %f	image: %f \n",r,xk1[r][c].real(),xk1[r][c].imag());
		}
	}

	///////////////     Kernel FFT后的数据          //////////////
//		static float Ker_Real[row][col] ={
//		#include "kernelReal.dat"
//			};
//		static float Ker_Imag[row][col] ={
//		#include "kernelImag.dat"
//			};
			////// 这里很奇怪如果用const就会报错

		static cmpxData Ker_F[row][col];
		cmpxData temp;
		for (int r = 0;r<row;r++){
			for(int c = 0;c<col;c++){
				fft_kernel[r][c].real(Ker_Real[r][c]*10000000);
				fft_kernel[r][c].imag(Ker_Imag[r][c]*10000000);
	//			printf("Real :%f , Imag:%f \n",Ker_F[r][c].real(),Ker_F[r][c].imag());
			}
		}



    //////////////////////////////////////////////////////////////////
    //////////////////// Matrix Multiply /////////////////////////////

	static cmpxData fft_kernel_modu[Kernel_Size][Kernel_Size];

	matrix_modulus(fft_kernel,fft_kernel_modu);//get modulus of the kernel

	static cmpxData fft_kernel_modu2[Kernel_Size][Kernel_Size];

	InnerProd(fft_kernel_modu,fft_kernel_modu,fft_kernel_modu2);//get square modelus

	static cmpxData G1[Kernel_Size][Kernel_Size];

	matrix_plus_SNR(fft_kernel_modu2,G1,k);

	matrix_div(fft_kernel_modu2,G1,G1);

	static cmpxData G[Kernel_Size][Kernel_Size];

	matrix_div(G1,fft_kernel,G);

//	InnerProd(xk1,G1,xk1);
    //////////////////////////////////////////////////////////////////


	//傅里叶逆变换（行）
	for(int r = 0; r < rows; r++)
	{
		for(int c = 0; c < cols; c++)
		{
			in[c].real(xk1[r][c].real());
			in[c].imag(xk1[r][c].imag());
			//in[c] = xk1[r][c];
			//printf("in %d num %f \n",c,in[c].real());
		}
		fft_top(~direction,in,out,&ovflo);
		for(int c = 0; c < cols; c++)
		{
			middle2[r][c].real(out[c].real());
			middle2[r][c].imag(out[c].imag());
			//middle2[r][c] = out[c];
			//printf("in %d num %f \n",c,out[c].real());
		}
	}
	//傅里叶逆变换（列）
	float m = 0;
	for(int c = 0; c < cols; c++)
	{
		for(int r = 0; r < rows; r++)
		{
			in[r].real(middle2[r][c].real());
			in[r].imag(middle2[r][c].imag());
			//in[r] = middle2[r][c];
		}
		fft_top(~direction,in,out,&ovflo);
		for(int r = 0; r < rows; r++)
		{
			xk2[r][c].real(out[r].real()*row);
			xk2[r][c].imag(out[r].imag()*row);
			//xk2[r][c] = out[r];
			printf("xk2	%d	real: %f	image: %f \n",r,xk2[r][c].real(),xk2[r][c].imag());
			if (xk2[r][c].real() > m){
//				printf("\n\n\n\n\n\n AAAAAAAAAAAAAAAAAAAAA!!!!%d  \n\n\n\n\n\n\n",element_pixel.val[0]);
				m = xk2[r][c].real();
			}
		}
	}


	for(int r = 0; r < rows; r++)
	{
		for(int c = 0; c < cols; c++)
		{
			element_pixel.val[0] = abs(xk2[r][c].real())/m*255;
			printf("pixel: %d \n",element_pixel.val[0]);
//			if (element_pixel.val[0] > m){
////				printf("\n\n\n\n\n\n AAAAAAAAAAAAAAAAAAAAA!!!!%d  \n\n\n\n\n\n\n",element_pixel.val[0]);
//				m = element_pixel.val[0];
//			}
			res << element_pixel;
		}
	}
	printf("\n\n\n\n\n\n\n\n\n\\n\n\n\n\n Max : %f \n \n\n\n",m);


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



//配置FFT参数
void dummy_proc_fe(
    bool direction,
    config_t* config,
    cmpxData in[FFT_LENGTH],
    cmpxData out[FFT_LENGTH])
{
    config->setDir(direction);
    config->setSch(0x2AB);
    for (int i=0; i< FFT_LENGTH; i++)
         out[i] = in[i];
}

//对FFT结果可能出现溢出的现象做处理
void dummy_proc_middle (
    config_t* config_in,
    config_t* config_out,
    status_t* st_in,
    cmpxData in[FFT_LENGTH],
    cmpxData out[FFT_LENGTH])
{
    ap_uint<1> dir = config_in->getDir();
    if (dir == 1)
        config_out->setDir(0);
    else
        config_out->setDir(1);

    config_out->setSch(config_in->getSch());
    int i;
    bool ovflw= st_in->getOvflo();

    for (i=0; i< FFT_LENGTH; i++)
    {
        data_t re, im;
        cmpxData in_temp = in[i];
        if (ovflw && (in_temp.real() < (data_t)(-1.0) || in_temp.real() >= (data_t)(1.0)))
            re = in_temp.real() - (int)(in_temp.real());
        else
            re = in_temp.real();

        if (ovflw && (in_temp.imag() < (data_t)(-1.0) || in_temp.imag() >= (data_t)(1.0)))
            im = in_temp.imag() - (int)(in_temp.imag());
        else
            im = in_temp.imag();

        out[i] = cmpxData(re, im);
    }
}

void fft_top(
    bool direction,
    cmpxData in[FFT_LENGTH],	//xn1 -> in
    cmpxData out[FFT_LENGTH],	//out -> xk1
    bool* ovflo)
{
#pragma HLS interface ap_hs port=direction
#pragma HLS interface ap_fifo depth=1 port=ovflo
#pragma HLS interface ap_fifo depth=1024 port=in,out
#pragma HLS data_pack variable=in
#pragma HLS data_pack variable=out
#pragma HLS dataflow

    cmpxData xn1[FFT_LENGTH];
    cmpxData xk1[FFT_LENGTH];
    status_t fft_status1;
    config_t fft_config1;

    cmpxData xn2[FFT_LENGTH];
    cmpxData xk2[FFT_LENGTH];
    status_t fft_status2;
    config_t fft_config2;

#pragma HLS data_pack variable=fft_config1

    dummy_proc_fe(direction, &fft_config1, in, xn1);

      // FFT IP
    hls::fft<config1>
    (xn1, xk1, &fft_status1, &fft_config1);

    dummy_proc_middle(&fft_config1, &fft_config2, &fft_status1, xk1, out);

}

void KernelMaker(
	int r,
	char mode,
	data_t kernel[Kernel_Size][Kernel_Size]
)
{
	int dr2 = 2*r*r;
	int r2 =r*r;
	data_t sum_mat = 0;
	data_t sum_mat2 = 0;
	if(mode == 1)	//guass kernel
	{
		for(int i = 0; i < (2*r); i++)
		{
			for(int j = 0; j < (2*r); j++)
			{
				kernel[i][j] = exp(-((i-r)*(i-r) + (j-r)*(j-r)) / dr2);
				sum_mat += kernel[i][j];
			}
		}
		for(int i = 0; i < (2*r); i++)
		{
			for(int j = 0; j < (2*r); j++)
			{
				kernel[i][j] /= sum_mat;
			}
		}
	}
	else	//homo kernel
	{
		for(int i = 0; i < (2*r); i++)
		{
			for(int j = 0; j < (2*r); j++)
			{
				if(((i-r)*(i-r) + (j-r)*(j-r)) < r2)
				{
					kernel[i][j] = 1.0 / r2;	//必须写为1.0，否则计算出错。
					sum_mat2 += kernel[i][j];
					printf("%d,%d,%f \n",i,j,kernel[i][j]);
				}
				else
				{
					kernel[i][j] = 0;
					printf("%f \n",kernel[i][j]);
				}
			}
		}
		for(int i = 0; i < (2*r); i++)
		{
			for(int j = 0; j < (2*r); j++)
			{
				kernel[i][j] /= sum_mat2;
				printf("%f \n",kernel[i][j]);
			}
		}
	}
}

void InnerProd(
	cmpxData in1[Kernel_Size][Kernel_Size],
	cmpxData in2[Kernel_Size][Kernel_Size],
	cmpxData out[Kernel_Size][Kernel_Size])
{
	for(int r = 0; r < Kernel_Size; r++)
#pragma HLS PIPELINE rewind
		for(int c = 0; c < Kernel_Size; c++ )
#pragma HLS UNROLL
			out[r][c] = in1[r][c]*in2[r][c];
}

void matrix_conj(
	cmpxData mat_in[Kernel_Size][Kernel_Size],
	cmpxData mat_out[Kernel_Size][Kernel_Size])
{
	for(int r = 0; r < Kernel_Size; r++)
		for(int c = 0; c < Kernel_Size; c++ )
		{
			mat_out[r][c].real( mat_in[r][c].real());
			mat_out[r][c].imag(-mat_in[r][c].imag());
		}
}

void matrix_modulus(
	cmpxData mat_in[Kernel_Size][Kernel_Size],
	cmpxData mat_out[Kernel_Size][Kernel_Size])
{
	for(int r = 0; r < Kernel_Size; r++)
		for(int c = 0; c < Kernel_Size; c++ )
		{
			mat_out[r][c].real(sqrt(pow(mat_in[r][c].real(),2) +
							        pow(mat_in[r][c].imag(),2)));
			mat_out[r][c].imag(0);
		}
}

void matrix_plus_SNR(
	cmpxData mat_in[Kernel_Size][Kernel_Size],
	cmpxData mat_out[Kernel_Size][Kernel_Size],
	data_t k)
{
	for(int r = 0; r < Kernel_Size; r++)
		for(int c = 0; c < Kernel_Size; c++ )
		{
			mat_out[r][c].real(mat_in[r][c].real() + k);
			mat_out[r][c].imag(mat_in[r][c].imag());
		}
}

void matrix_div(
	cmpxData mat_in1[Kernel_Size][Kernel_Size],
	cmpxData mat_in2[Kernel_Size][Kernel_Size],
	cmpxData mat_out[Kernel_Size][Kernel_Size])
{
	for(int r = 0; r < Kernel_Size; r++)
		for(int c = 0; c < Kernel_Size; c++ )
		{
			mat_out[r][c] = mat_in1[r][c] / mat_in2[r][c];
		}
}
