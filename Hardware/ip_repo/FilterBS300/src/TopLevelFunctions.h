#include <iostream>
#include <fstream>
#include <string>

std::vector <float> parsefcf(std::string FCFPATH){

    std::string line;
    std::ifstream coefffile("FCFPATH");
    std::vector<float> coeffs;

    //Debugging
    std::cout << FCFPATH << std::endl << std::endl;
    //Check if a coeffient-file is provided
    if (coefffile.is_open()){
        //Getting rid of the first 13 lines, since the coefficients start at line 14
        for (int j = 0; j < 15; j++){
            getline(coefffile, line);
        }
        while (!line.empty()) {
            coeffs.push_back(std::stof(line));
            getline(coefffile, line);
        }
        coefffile.close();
        std::cout << "File found, getting coefficients..." << std::endl;
        std::cout << "Filtercoefficients:" << std::endl << std::endl;

        int j = 0;
        for (auto &it : coeffs) {
            std::cout << j++ << ": " << it << std::endl;
        }
    }
    return coeffs;
}
