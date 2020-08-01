/*
learn from the canny_edge IP 
*/

#include "hls_video.h"
#include <ap_fixed.h>
#include <complex>
#include "hls_fft.h"


// configurable params
const char FFT_INPUT_WIDTH                     = 32;
const char FFT_OUTPUT_WIDTH                    = FFT_INPUT_WIDTH;
const char FFT_STATUS_WIDTH                    = 8;
const char FFT_CONFIG_WIDTH                    = 16;
const char FFT_NFFT_MAX                        = 7;	//娣囶喗鏁糵ft閻愯鏆熼棁锟界憰浣哥殺FFT_NFFT_MAX娑撳穯onfig1->max_nfft閸у洣缍旀穱顔芥暭
const int  FFT_LENGTH                          = 1 << FFT_NFFT_MAX;	//The size of the FFT data set


struct config1 : hls::ip_fft::params_t {
	static const unsigned ordering_opt = hls::ip_fft::natural_order;
	static const unsigned config_width = FFT_CONFIG_WIDTH;
	static const unsigned status_width = FFT_STATUS_WIDTH;
	static const unsigned phase_factor_width = 24;	//娴ｈ法鏁ゆ妯款吇閸欏倹鏆�16娴兼碍濮ら柨锟�
	static const unsigned max_nfft = 7;	//娣囶喗鏁糵ft閻愯鏆熼棁锟界憰浣哥殺FFT_NFFT_MAX娑撳穯onfig1->max_nfft閸у洣缍旀穱顔芥暭
	static const unsigned setSch = 0x2AB;
};

typedef hls::ip_fft::config_t<config1> config_t;
typedef hls::ip_fft::status_t<config1> status_t;

struct wide_stream {
	ap_uint<32> data;
	ap_uint<1> user;
	ap_uint<1> last;
};

#define MAX_WIDTH  256
#define MAX_HEIGHT 256
#define CHANNEL	   3

typedef float data_t;
typedef std::complex<data_t> cmpxData;

typedef hls::Scalar<1, unsigned char>                 GRAY_PIXEL;
typedef hls::Mat<MAX_HEIGHT, MAX_WIDTH, HLS_8UC1>     GRAY_IMAGE;
typedef hls::Mat<MAX_HEIGHT, MAX_WIDTH, HLS_16SC1>    GRAY_IMAGE_16S;
typedef hls::Mat<MAX_HEIGHT, MAX_WIDTH, HLS_16UC1>    GRAY_IMAGE_16;

#define Kernel_Size 128

void WienerDeblur(
	wide_stream* in_stream,
	wide_stream* out_stream,
	ap_uint<32> rows,
	ap_uint<32> cols
	);


void KernelMaker(
	int r,
	char mode,
	cmpxData kernel[Kernel_Size][Kernel_Size]
	);

void dummy_proc_fe(
    bool direction,
    config_t* config,
    cmpxData in[FFT_LENGTH],
    cmpxData out[FFT_LENGTH]
	);

void dummy_proc_middle (
    config_t* config_in,
    config_t* config_out,
    status_t* st_in,
    cmpxData in[FFT_LENGTH],
    cmpxData out[FFT_LENGTH]
	);

void fft_top(
    bool direction,
    cmpxData in[FFT_LENGTH],	//xn1 -> in
    cmpxData out[FFT_LENGTH],	//out -> xk1
    bool* ovflo
	);

void InnerProd(
	cmpxData in1[Kernel_Size][Kernel_Size],
	cmpxData in2[Kernel_Size][Kernel_Size],
	cmpxData out[Kernel_Size][Kernel_Size]
	);

void matrix_conj(
	cmpxData mat_in[Kernel_Size][Kernel_Size],
	cmpxData mat_out[Kernel_Size][Kernel_Size]
	);

void matrix_modulus(
	cmpxData mat_in[Kernel_Size][Kernel_Size],
	cmpxData mat_out[Kernel_Size][Kernel_Size]
	);

void matrix_plus_SNR(
	cmpxData mat_in[Kernel_Size][Kernel_Size],
	cmpxData mat_out[Kernel_Size][Kernel_Size],
	data_t k
	);

void matrix_div(
	cmpxData mat_in1[Kernel_Size][Kernel_Size],
	cmpxData mat_in2[Kernel_Size][Kernel_Size],
	cmpxData mat_out[Kernel_Size][Kernel_Size]
	);


