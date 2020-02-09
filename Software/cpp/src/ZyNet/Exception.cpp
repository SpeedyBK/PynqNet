//
// Created by benjamin on 04.11.19.
//

#include "Exception.h"

namespace ZyNet
{
    const char* Exception::what() const noexcept
    {
        return msg.c_str();
    }

    std::ostream& operator<<( std::ostream& oss, ZyNet::Exception &e)
    {
        return oss << e.msg;
    }

}