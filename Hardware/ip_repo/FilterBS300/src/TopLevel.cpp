#include <vector>

#include "TopLevelFunctions.h"

#define FCF_PATH "../coefficiants/FeedbackLOW.fcf"

int TopLevel(int sample){

	//Init a Shift Register and a vector of filter coefficiants.
	std::vector<short int> ShiftReg;
	std::vector<float> coeffs = parsefcf(FCF_PATH);

	//Define the length of ShiftReg to be equal to the coefficiants vector.
	ShiftReg.reserve(coeffs.size());

    for (int i = coeffs.size() - 1; i > 0; i--){
        ShiftReg[i] = ShiftReg[i-1];
    }

    ShiftReg[0] = sample;

    float out = 0;

    for (int i = 0; i < coeffs.size(); i++){
        out += ((float)ShiftReg[i] * coeffs[i]);
    }

    return (int)out;

}
