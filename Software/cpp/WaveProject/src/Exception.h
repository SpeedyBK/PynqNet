//
// Created by benjamin on 17.04.20.
//

#ifndef WAVEPROJECT_EXEPTION_H
#define WAVEPROJECT_EXEPTION_H


#pragma once

#include <exception>
#include <ostream>

/*!
 * \brief The Exception class implements exceptions thrown by WaveProject
 */

namespace WaveProject {

    class Exception : public std::exception {
    public:
        std::string msg;

        explicit Exception(std::string s) : msg(s) {}

        virtual const char *what() const noexcept override;
    };

    std::ostream &operator<<(std::ostream &oss, Exception &e);

}
#endif //WAVEPROJECT_EXEPTION_H
