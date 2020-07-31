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

void MatrixDivide(cmpxData m1[512][512],cmpxData m2[512][512],cmpxData out[512][512]){
#pragma HLS ARRAY_RESHAPE variable = a complete dim = 0
#pragma HLS ARRAY_RESHAPE variable = b complete dim = 0
	for(int r = 0;r<512;r++)
	{
#pragma HLS PIPELINE rewind
		for(int c = 0;c<512;c++ ){
#pragma HLS UNROLL
			out[r][c] = m1[r][c]/m2[r][c];
		}
	}
}

void MatrixConj(cmpxData m1[512][512],cmpxData out[512][512]){
#pragma HLS ARRAY_RESHAPE variable = a complete dim = 0
#pragma HLS ARRAY_RESHAPE variable = b complete dim = 0
	for(int r = 0;r<512;r++)
	{
#pragma HLS PIPELINE rewind
		for(int c = 0;c<512;c++ ){
#pragma HLS UNROLL
			out[r][c].real(m1[r][c].real());
			out[r][c].imag(-m1[r][c].imag());
		}
	}
}


void MatrixMold(cmpxData m1[512][512],cmpxData out[512][512]){
#pragma HLS ARRAY_RESHAPE variable = a complete dim = 0
#pragma HLS ARRAY_RESHAPE variable = b complete dim = 0
	for(int r = 0;r<512;r++)
	{
#pragma HLS PIPELINE rewind
		for(int c = 0;c<512;c++ ){
#pragma HLS UNROLL
			out[r][c].imag(0);
			out[r][c].real(sqrt( pow (m1[r][c].real(),2) + pow( m1[r][c].imag() , 2) ));
		}
	}
}

void MatrixPlusNum(cmpxData m1[512][512],float k,cmpxData out[512][512]){
#pragma HLS ARRAY_RESHAPE variable = a complete dim = 0
#pragma HLS ARRAY_RESHAPE variable = b complete dim = 0
	for(int r = 0;r<512;r++)
	{
#pragma HLS PIPELINE rewind
		for(int c = 0;c<512;c++ ){
#pragma HLS UNROLL
			out[r][c].real(m1[r][c].real() + k);
			out[r][c].imag(m1[r][c].imag());
		}
	}
}
