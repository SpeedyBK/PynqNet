#include <stdio.h>

#include "FIR16ACoeff.h"

void FIR16BitA(int *a, int *c)
{
#pragma HLS INTERFACE s_axilite port=a bundle=BUS_A
#pragma HLS INTERFACE s_axilite port=c register bundle=BUS_A
#pragma HLS INTERFACE s_axilite port=return bundle=BUS_A

#pragma HLS pipeline

    for (int i = (sizeof(coeffs)/sizeof(float)) - 1; i > 0; i--){
        m_filterArray[i] = m_filterArray[i-1];
    }

    m_filterArray[0] = *a;

    *c = 0;

    for (int j = 0; j < (sizeof(coeffs)/sizeof(float)) ; j++){
        *c += (int)((float)m_filterArray[j] * coeffs[j]);
    }
}
