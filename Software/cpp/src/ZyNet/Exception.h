//
// Created by benjamin on 04.11.19.
//

#pragma once

#ifndef ZYNET_EXCEPTION_H
#define ZYNET_EXCEPTION_H

#include <exception>
#include <ostream>

namespace ZyNet {

    /*!
     * \brief The Exception class implements exceptions thrown by HatScheT
     */

    class Exception : public std::exception {

    public:
        std::string msg;

        Exception(std::string s) : msg(s) {
        }

        virtual const char *what() const noexcept override;

    };

    std::ostream &operator<<(std::ostream &oss, ZyNet::Exception &e);

}

#endif //ZYNET_EXCEPTION_H