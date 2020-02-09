#include <iostream>
#include "ZyNet/Base.h"

int main() {

    ZyNet::Base base;
    base.createSocket();
    base.bindtoIP();
    base.socklisten();
    base.acceptCall();
    base.closeSocket();
    base.displayMessage();
    return 0;
}
