#include "WienerDeblur.h"


void WienerDeblur(wide_stream* in_stream, wide_stream* out_stream, ap_uint<32> rows, ap_uint<32> cols){//////, int threshold1, int threshold2){

#pragma HLS INTERFACE axis port=in_stream bundle=INPUT
#pragma HLS INTERFACE axis port=out_stream bundle=OUTPUT

#pragma HLS INTERFACE s_axilite port=rows bundle=CONTROL_BUS offset=0x14 clock=AXI_LITE_clk
#pragma HLS INTERFACE s_axilite port=cols bundle=CONTROL_BUS offset=0x1C clock=AXI_LITE_clk
// #pragma HLS INTERFACE s_axilite port=threshold1 bundle=CONTROL_BUS offset=0x24 clock=AXI_LITE_clk
// #pragma HLS INTERFACE s_axilite port=threshold2 bundle=CONTROL_BUS offset=0x2C clock=AXI_LITE_clk
#pragma HLS INTERFACE s_axilite port=return bundle=CONTROL_BUS clock=AXI_LITE_clk

#pragma HLS INTERFACE ap_stable port=rows
#pragma HLS INTERFACE ap_stable port=cols
// #pragma HLS INTERFACE ap_stable port=threshold1
// #pragma HLS INTERFACE ap_stable port=threshold2

	GRAY_IMAGE src_bw(rows, cols);
	GRAY_IMAGE src_blur(rows, cols);
	GRAY_IMAGE src1(rows, cols);
	GRAY_IMAGE src2(rows, cols);
	GRAY_IMAGE_16S sobel_gx(rows, cols);
	GRAY_IMAGE_16S sobel_gy(rows, cols);
    GRAY_IMAGE_16 grad_gd(rows, cols);
    GRAY_IMAGE_16 suppressed(rows, cols);
    GRAY_IMAGE thresholded(rows, cols);
    GRAY_IMAGE OutputImg(rows, cols);
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

	hls::Duplicate( src_bw, OutputImg, src2 );
//	// Calculate gradients in x and y direction using Sobel filter
//    hls::Sobel<1,0,3>( src1, sobel_gx );
//    hls::Sobel<0,1,3>( src2, sobel_gy );
//	// Calculate gradient magnitude and direction
//	gradient_decomposition( sobel_gx, sobel_gy, grad_gd );
//	// Perform non-maximum suppression for edge thinning
//	nonmax_suppression( grad_gd, suppressed );


    for(int r = 0; r < rows; r++){
    #pragma HLS pipeline II=4
		for(int c = 0; c < col_packets; c++){
			ap_uint<32> dat;
			dat.range(7,0) = OutputImg.read().val[0];
			dat.range(15,8) = OutputImg.read().val[0];
			dat.range(23,16) = OutputImg.read().val[0];
			dat.range(31,24) = OutputImg.read().val[0];
			out_stream->data = dat;
			out_stream->user = (r == 0 && c == 0)? 1: 0;
			out_stream->last = (r == rows-1 && c == col_packets-1)? 1: 0;
			++out_stream;
		}
	}
}
