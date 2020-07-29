/*
learned from The canny_edge IP
*/
#include "WienerDeblur.h"


void WienerDeblur(wide_stream* in_stream, wide_stream* out_stream, ap_uint<32> rows, ap_uint<32> cols){
#pragma HLS INTERFACE axis port=in_stream bundle=INPUT
#pragma HLS INTERFACE axis port=out_stream bundle=OUTPUT

#pragma HLS INTERFACE s_axilite port=rows bundle=CONTROL_BUS offset=0x14 clock=AXI_LITE_clk
#pragma HLS INTERFACE s_axilite port=cols bundle=CONTROL_BUS offset=0x1C clock=AXI_LITE_clk
#pragma HLS INTERFACE s_axilite port=return bundle=CONTROL_BUS clock=AXI_LITE_clk

#pragma HLS INTERFACE ap_stable port=rows
#pragma HLS INTERFACE ap_stable port=cols


	GRAY_IMAGE src_bw(rows, cols);

	GRAY_IMAGE src1(rows, cols);
	GRAY_IMAGE src2(rows, cols);

    GRAY_IMAGE res(rows, cols);

    GRAY_PIXEL element_pixel;
    GRAY_PIXEL pixel_gd;


#pragma HLS dataflow
	const int col_packets = cols/4;
	const int packets = col_packets*rows;
	const int pixel_cnt = rows*cols;

	static cmpxData Array[600][600];

//	hls::Scalar<1, unsigned char> pixel_gd;//��ʱ���������ݴ��������?
	int width = cols;
	int height = rows;


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
//
//	GRAY_PIXEL pixel_gd2;
	short mat2[600][600];
//	for(int r = 0; r < rows; r++)
//		{
//			for(int c = 0; c < cols; c++)
//			{
//				src2 >> pixel_gd2;
//
//				mat2[r][c] = pixel_gd2.val[0];
//			}
//		}



	for( int i = 0; i < rows+1; i++ ) {
  		for( int j = 0; j < cols+1; j++ ) {
 #pragma HLS LOOP_FLATTEN OFF
 #pragma HLS DEPENDENCE array inter false
 #pragma HLS PIPELINE
			  if ( i < rows && j < cols ) {
				  src2 >> pixel_gd;
				  Array[i][j].real(pixel_gd.val[0]);// = (pixel_gd.val[0],10);
				  mat2[i][j] = pixel_gd.val[0];
				  // printf("i:%d,j:%d,pixel:%d",i,j,Array[i][j]);
			  }
  		}
	}

//
	for( int i = 0; i < rows+1; i++ ) {
  		for( int j = 0; j < cols+1; j++ ) {
 #pragma HLS LOOP_FLATTEN OFF
 #pragma HLS DEPENDENCE array inter false
 #pragma HLS PIPELINE
			  if ( i < rows && j < cols ) {
				  element_pixel.val[0] =  Array[i][j].real();   //mat2[i][j];//*Array[i][j].real();
				  res << element_pixel;
			  }
  		}
	}


//

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
