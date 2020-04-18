#include "Exception.h"

namespace WaveProject
{

    const char* Exception::what() const noexcept
    {
        return msg.c_str();
    }

    std::ostream& operator<<( std::ostream& oss, WaveProject::Exception &e)
    {
        return oss << e.msg;
    }

}