#include "hls_fft.h"
#include "WienerDeblur.h"

const char FFT_INPUT_WIDTH                     = 32;
const char FFT_OUTPUT_WIDTH                    = FFT_INPUT_WIDTH;
const char FFT_STATUS_WIDTH                    = 8;
const char FFT_CONFIG_WIDTH                    = 16;
const char FFT_NFFT_MAX                        = 8;	//修改fft点数需要将FFT_NFFT_MAX与config1->max_nfft均作修改
const int  FFT_LENGTH                          = 1 << FFT_NFFT_MAX;	//The size of the FFT data set


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
