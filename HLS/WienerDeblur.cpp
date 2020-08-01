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
 	const int row = 128;
	const int col = 128;
	static cmpxData xn1[row][col];	//FFT input data
	static cmpxData xk1[row][col];	//FFT output data
	static cmpxData middle[row][col];	//FFT middle data
	//static cmpxData xn2[row][col];	//FFT input data
	static cmpxData xk2[row][col];	//FFT output data
	static cmpxData middle2[row][col];	//FFT middle data
	static cmpxData in1[FFT_LENGTH];
	/*static cmpxData in2[FFT_LENGTH];
	static cmpxData in3[FFT_LENGTH];
	static cmpxData in4[FFT_LENGTH];
	static cmpxData in5[FFT_LENGTH];
	static cmpxData in6[FFT_LENGTH];*/
	static cmpxData out1[FFT_LENGTH];
	/*static cmpxData out2[FFT_LENGTH];
	static cmpxData out3[FFT_LENGTH];
	static cmpxData out4[FFT_LENGTH];
	static cmpxData out5[FFT_LENGTH];
	static cmpxData out6[FFT_LENGTH];*/
	static cmpxData fft_kernel[Kernel_Size][Kernel_Size];
	static cmpxData kernel[Kernel_Size][Kernel_Size] = {{0}};
#pragma HLS interface ap_fifo depth=1024 port=xn1,xk1
#pragma HLS interface ap_fifo depth=1024 port=xk2
#pragma HLS interface ap_fifo depth=1024 port=in1,out1
/*#pragma HLS interface ap_fifo depth=1024 port=in2,out2
#pragma HLS interface ap_fifo depth=1024 port=in3,out3
#pragma HLS interface ap_fifo depth=1024 port=in4,out4
#pragma HLS interface ap_fifo depth=1024 port=in5,out5
#pragma HLS interface ap_fifo depth=1024 port=in6,out6*/
#pragma HLS interface ap_fifo depth=1024 port=middle,middle2
#pragma HLS interface ap_fifo depth=1024 port=kernel,fft_kernel

//#pragma HLS interface ap_fifo depth=1024 port=in1,in2,in3,in4,in5,in6,out1,out2,out3,out4,out5,out6
	GRAY_IMAGE src_bw(rows, cols);
	//GRAY_IMAGE src1(rows, cols);
	//GRAY_IMAGE src2(rows, cols);
	GRAY_IMAGE res(rows, cols); //test
	GRAY_IMAGE res_imag(rows, cols);

	GRAY_PIXEL pixel_gd1;
	GRAY_PIXEL pixel_gd2;
	GRAY_PIXEL element_pixel;
	GRAY_PIXEL element_pixel_imag;

	config_t fft_config1;	//（输入配置）
	status_t fft_status1;	//（输出状态）

//#pragma HLS dataflow
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

	//hls::Duplicate( src_bw, src1, src2 );

	for(int r = 0; r < rows; r++)
	{
		for(int c = 0; c < cols; c++)
		{
			src_bw >> pixel_gd1;
			xn1[r][c].real(pixel_gd1.val[0]);
			xn1[r][c].imag(0);
		}
	}
	/***********get FFT_array(2D FFT)**************/
	bool ovflo;
	//傅里叶正变换（行）
	for(int r = 0; r < rows; r++)
	{
		for(int c = 0; c < cols; c++)
		{
			in1[c].real(xn1[r][c].real());
			in1[c].imag(xn1[r][c].imag());
			//in[c] = xn1[r][c];
			//printf("in %d num %f \n",c,in[c].real());
		}
		fft_top(direction,in1,out1,&ovflo);
		for(int c = 0; c < cols; c++)
		{
			middle[r][c].real(out1[c].real()/256);
			middle[r][c].imag(out1[c].imag()/256);
			//middle[r][c] = out[c];
			//printf("in	%d	real: %f	image: %f \n",r,out[c].real(),out[c].imag());
		}
	}
	//傅里叶正变换（列）
	for(int c = 0; c < col; c++)
	{
		for(int r = 0; r < row; r++)
		{
			in1[r].real(middle[r][c].real());
			in1[r].imag(middle[r][c].imag());
			//in[r] = middle[r][c];
		}
		fft_top(direction,in1,out1,&ovflo);
		for(int r = 0; r < row; r++)
		{
			xk1[r][c].real(out1[r].real()/256);
			xk1[r][c].imag(out1[r].imag()/256);
			//xk1[r][c] = out[r];
			//printf("xk1	%d	real: %f	image: %f \n",r,xk1[r][c].real(),xk1[r][c].imag());
		}
	}

	/***********get FFT_kernel**************/
	KernelMaker((Kernel_Size)/2,1,kernel);
	//test KernelMaker
	/*for(int i = 0; i < Kernel_Size; i++)
	{
		for(int j = 0; j < Kernel_Size; j++)
		{
			if(j == Kernel_Size-1)
			{
				printf("%f ",kernel[i][j].real());
				printf("\n");
			}
			else
				printf("%f ",kernel[i][j].real());
		}
	}*/
	//傅里叶正变换（行）
	for(int r = 0; r < Kernel_Size; r++)
	{
		for(int c = 0; c < Kernel_Size; c++)
		{
			in1[c].real(kernel[r][c].real());
			in1[c].imag(kernel[r][c].imag());
			//in[c] = kernel[r][c];
			//printf("in %d num %f \n",c,in[c].real());
		}
		fft_top(direction,in1,out1,&ovflo);
		for(int c = 0; c < cols; c++)
		{
			middle[r][c].real(out1[c].real());
			middle[r][c].imag(out1[c].imag());
			//middle[r][c] = out[c];
			//printf("in %d num %f \n",c,out[c].real());
		}
	}
	//傅里叶正变换（列）
	for(int c = 0; c < Kernel_Size; c++)
	{
		for(int r = 0; r < Kernel_Size; r++)
		{
			in1[r].real(middle[r][c].real());
			in1[r].imag(middle[r][c].imag());
			//in[r] = middle[r][c];
		}
		fft_top(direction,in1,out1,&ovflo);
		for(int r = 0; r < rows; r++)
		{
			fft_kernel[r][c].real(out1[r].real()/2);
			fft_kernel[r][c].imag(out1[r].imag()/2);
			//fft_kernel[r][c] = out[r];
		}
	}

	static cmpxData gauss_blur[Kernel_Size][Kernel_Size];

	InnerProd(xk1,fft_kernel,gauss_blur);

	static cmpxData fft_kernel_modu[Kernel_Size][Kernel_Size];

	matrix_modulus(fft_kernel,fft_kernel_modu);//get modulus of the kernel

	static cmpxData fft_kernel_modu2[Kernel_Size][Kernel_Size];

	InnerProd(fft_kernel_modu,fft_kernel_modu,fft_kernel_modu2);//get square modelus

	static cmpxData G1[Kernel_Size][Kernel_Size];
#pragma HLS interface ap_fifo depth=1024 port=G1,fft_kernel_modu2
	matrix_plus_SNR(fft_kernel_modu2,G1,0);

	matrix_div(fft_kernel_modu2,G1,G1);

	static cmpxData G[Kernel_Size][Kernel_Size];

	matrix_div(G1,fft_kernel,G);

	InnerProd(gauss_blur,G,xk1);


	//傅里叶逆变换（行）
	for(int r = 0; r < rows; r++)
	{
		for(int c = 0; c < cols; c++)
		{
			in1[c].real(xk1[r][c].real());
			in1[c].imag(xk1[r][c].imag());
			//in[c] = xk1[r][c];
			//printf("in %d num %f \n",c,in[c].real());
		}
		fft_top(~direction,in1,out1,&ovflo);
		for(int c = 0; c < cols; c++)
		{
			middle2[r][c].real(out1[c].real());
			middle2[r][c].imag(out1[c].imag());
			//middle2[r][c] = out[c];
			//printf("in %d num %f \n",c,out[c].real());
		}
	}
	//傅里叶逆变换（列）
	for(int c = 0; c < cols; c++)
	{
		for(int r = 0; r < rows; r++)
		{
			in1[r].real(middle2[r][c].real());
			in1[r].imag(middle2[r][c].imag());
			//in[r] = middle2[r][c];
		}
		fft_top(~direction,in1,out1,&ovflo);
		for(int r = 0; r < rows; r++)
		{
			xk2[r][c].real(out1[r].real());
			xk2[r][c].imag(out1[r].imag());
			//xk2[r][c] = out[r];
			//printf("xk2	%d	real: %f	image: %f \n",r,xk2[r][c].real(),xk2[r][c].imag());
		}
	}


	for(int r = 0; r < rows; r++)
	{
		for(int c = 0; c < cols; c++)
		{
			element_pixel.val[0] = (abs(xk2[r][c].real()));
			element_pixel_imag.val[0] = (abs(xk2[r][c].imag()));
			res << element_pixel;
			res_imag << element_pixel_imag;
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



//test KernelMaker
/*for(int i = 0; i < Kernel_Size; i++)
{
	for(int j = 0; j < Kernel_Size; j++)
	{
		if(j == Kernel_Size-1)
		{
			printf("%f ",kernel[i][j]);
			printf("\n");
		}
		else
			printf("%f ",kernel[i][j]);
	}
}*/

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
//#pragma HLS dataflow

    static cmpxData xn1[FFT_LENGTH];
    static cmpxData xk1[FFT_LENGTH];
    status_t fft_status1;
    config_t fft_config1;

    //static cmpxData xn2[FFT_LENGTH];
    //static cmpxData xk2[FFT_LENGTH];
    //status_t fft_status2;
    config_t fft_config2;
#pragma HLS interface ap_fifo depth=1024 port=xn1,xk1
#pragma HLS interface ap_fifo depth=1024 port=fft_status1.data.V,fft_config1.data.V
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
	cmpxData kernel[Kernel_Size][Kernel_Size]
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
				kernel[i][j].real(exp(-((i-r)*(i-r) + (j-r)*(j-r)) / dr2));
				kernel[i][j].imag(0);
				sum_mat += kernel[i][j].real();
			}
		}
		//printf("sum mat : %f \n",sum_mat);
		/*for(int i = 0; i < (2*r); i++)
		{
			for(int j = 0; j < (2*r); j++)
			{
				kernel[i][j].real(kernel[i][j].real()/sum_mat);
				//printf("%d,%d,%f \n",i,j,kernel[i][j]);
			}
		}*/
	}
	else	//homo kernel
	{
		for(int i = 0; i < (2*r); i++)
		{
			for(int j = 0; j < (2*r); j++)
			{
				if(((i-r)*(i-r) + (j-r)*(j-r)) < r2)
				{
					kernel[i][j].real(1.0 / r2);	//必须写为1.0，否则计算出错。
					sum_mat2 += kernel[i][j].real();
					kernel[i][j].imag(0);
					//printf("%d,%d,%f \n",i,j,kernel[i][j]);
				}
				else
				{
					kernel[i][j].real(0);
					kernel[i][j].imag(0);
					//printf("%f \n",kernel[i][j]);
				}
			}
		}
		/*for(int i = 0; i < (2*r); i++)
		{
			for(int j = 0; j < (2*r); j++)
			{
				kernel[i][j].real(kernel[i][j].real()/sum_mat2);
				//printf("%f \n",kernel[i][j]);
			}
		}*/
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
