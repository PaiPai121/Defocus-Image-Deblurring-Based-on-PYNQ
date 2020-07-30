/*
learn from the canny_edge IP 
*/

#include "hls_video.h"
#include <ap_fixed.h>
#include <complex>
#include "hls_fft.h"
#include "math.h"


// configurable params
const char FFT_INPUT_WIDTH                     = 16;
const char FFT_OUTPUT_WIDTH                    = FFT_INPUT_WIDTH;
const char FFT_STATUS_WIDTH                    = 8;
const char FFT_CONFIG_WIDTH                    = 16;
const char FFT_NFFT_MAX                        = 9;
const int  FFT_LENGTH                          = 1<<FFT_NFFT_MAX;	//The size of the FFT data set

struct wide_stream {
	ap_uint<32> data;
	ap_uint<1> user;
	ap_uint<1> last;
};

struct config1 : hls::ip_fft::params_t {
	static const unsigned ordering_opt = hls::ip_fft::natural_order;
	static const unsigned config_width = FFT_CONFIG_WIDTH;
	static const unsigned status_width = FFT_STATUS_WIDTH;
	static const unsigned max_nfft = 9;
	static const unsigned phase_factor_width = 24;	//ʹ��Ĭ�ϲ���16�ᱨ��
};

typedef hls::ip_fft::config_t<config1> config_t;
typedef hls::ip_fft::status_t<config1> status_t;

#define MAX_WIDTH  1920
#define MAX_HEIGHT 1080
#define CHANNEL	   3

typedef float data_t;
typedef std::complex<data_t> cmpxData;

typedef hls::Scalar<1, unsigned char>                 GRAY_PIXEL;
typedef hls::Mat<MAX_HEIGHT, MAX_WIDTH, HLS_8UC1>     GRAY_IMAGE;
typedef hls::Mat<MAX_HEIGHT, MAX_WIDTH, HLS_16SC1>    GRAY_IMAGE_16S;
typedef hls::Mat<MAX_HEIGHT, MAX_WIDTH, HLS_16UC1>    GRAY_IMAGE_16;

//void WienerDeblur(wide_stream* in_stream, wide_stream* out_stream, ap_uint<32> rows, ap_uint<32> cols);
void WienerDeblur(
	wide_stream* in_stream,
	wide_stream* out_stream,
	ap_uint<32> rows,
	ap_uint<32> cols);//,// int threshold1, int threshold2);

void dummy_proc_fe(
    bool direction,
    config_t* config,
    cmpxData in[FFT_LENGTH],
    cmpxData out[FFT_LENGTH]);

void dummy_proc_be(
    status_t* status_in,
    bool* ovflo,
    cmpxData in[FFT_LENGTH],
    cmpxData out[FFT_LENGTH]);

void dummy_proc_middle (
    config_t* config_in,
    config_t* config_out,
    status_t* st_in,
    cmpxData in[FFT_LENGTH],
    cmpxData out[FFT_LENGTH]);

void fft_top(
    bool direction,
    cmpxData in[FFT_LENGTH],
    cmpxData out[FFT_LENGTH],
    bool* ovflo);
