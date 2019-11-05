//
// Created by benjamin on 04.11.19.
//

#ifndef ZYNET_ZYNET_H
#define ZYNET_ZYNET_H

#include <iostream>
#include <sys/types.h>
#include <sys/socket.h>
#include <netdb.h>
#include <string.h>
#include <string>
#include <unistd.h>
#include <arpa/inet.h>

namespace ZyNet {

    class Base {

    public:

        /*!
         * Constructor
         */
        Base();

        /*!
         * Create a Socket
         */
        void createSocket();

        /*!
         * Bind Socket to IP
         */
         void bindtoIP();

        /*!
         * Listen
         */
         void socklisten();

        /*!
         * Accept a call
         */
         void acceptCall();

         /*!
          * Closing the Socket;
          */
         void closeSocket();

         /*!
          * Displaying stuff
          */
         void displayMessage();

         void stupidthings();

    private:

        int listening;

        sockaddr_in hint;

        sockaddr_in client;

        socklen_t clientsize;

        char host[NI_MAXHOST];

        char services[NI_MAXSERV];

        int clientsocket;

        int result;

        char buffer[4096];

        int bytesReceived;

    };
}

#endif //ZYNET_ZYNET_H
