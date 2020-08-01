#include "fft_top.h"

void dummy_proc_fe(
    bool direction,
    config_t* config,
    cmpxData in[FFT_LENGTH],
    cmpxData out[FFT_LENGTH])
{
    int i;
    config->setDir(direction);
    config->setSch(0x2AB);
    for (i=0; i< FFT_LENGTH; i++)
        out[i] = in[i];
}

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

/*void dummy_proc_be(
    status_t* status_in,
    bool* ovflo,
    cmpxData in[FFT_LENGTH],
    cmpxData out[FFT_LENGTH])
{
    int i;
    *ovflo = status_in->getOvflo();
    for (i=0; i< FFT_LENGTH; i++)
        out[i] = in[i];
}*/


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
