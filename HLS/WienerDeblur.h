/*
learn from the canny_edge IP 
*/

#include "hls_video.h"
#include <ap_fixed.h>
#include "hls_fft.h"
#include <complex.h>
struct wide_stream {
	ap_uint<32> data;
	ap_uint<1> user;
	ap_uint<1> last;
};
#define MAX_WIDTH  1920
#define MAX_HEIGHT 1080
#define CHANNEL	   3

typedef hls::Scalar<1, unsigned char>                 GRAY_PIXEL;
typedef hls::Mat<MAX_HEIGHT, MAX_WIDTH, HLS_8UC1>     GRAY_IMAGE;
typedef hls::Mat<MAX_HEIGHT, MAX_WIDTH, HLS_16SC1>    GRAY_IMAGE_16S;
typedef hls::Mat<MAX_HEIGHT, MAX_WIDTH, HLS_16UC1>    GRAY_IMAGE_16;

// FFT defination
const char FFT_INPUT_WIDTH                     = 8;//??? ‰»ÎøÌ∂»£ø

// complex number Defination
typedef ap_fixed<FFT_INPUT_WIDTH,1> data_in_t;
typedef std::complex<int> cmpxData;



//void WienerDeblur(wide_stream* in_stream, wide_stream* out_stream, ap_uint<32> rows, ap_uint<32> cols);
void WienerDeblur(wide_stream* in_stream, wide_stream* out_stream, ap_uint<32> rows, ap_uint<32> cols);//,// int threshold1, int threshold2);
