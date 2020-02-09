import os
import sys
import argparse
import socket

#####################
# Parse Commandline #
#####################
def parse_cmd():
    parser = argparse.ArgumentParser(description="UDP Sender Script")
    parser.add_argument("-f", "--file", dest="filename", default="", help="read data from FILE",
                        metavar="FILE")
    parser.add_argument("-s", "--server", dest="server", default="",
                        help="destination host HOST", metavar="HOST")
    parser.add_argument("-p", "--port", dest="port", default="", help="destination port PORT",
                        metavar="PORT")
    parser.add_argument('cmd', nargs=argparse.REMAINDER)
    return parser.parse_args()


###################################
# Generate Message from Arguments #
###################################
def get_message_data(args):
    # Check Arguments vs Defaults #
    if args.server != "":
        host = args.server
    else:
        host = "192.168.2.101"

    if args.port != "":
        port = int(args.port)
    else:
        port = 8000

    # Check Message if file provided, read file #
    if args.filename == "":
        data = ' '.join(args.cmd)
    elif args.filename == "stdin":
        data = sys.stdin.readlines()
    else:
        filename = os.path.abspath(args.filename)
        if not os.path.exists(filename):
            print(sys.stderr, "The file %s does not exist!" % filename)
            os._exit(1)
        with open(filename) as fh:
            data = fh.read()

    _message = (host, port, data)
    return _message


################
# Main Program #
################

# Parse Commandeline #
arguments = parse_cmd()

# Generate Message # - ([0] Remote IP, [1] Remote Port, [2] Data to send) #
message = get_message_data(arguments)

# TCP Connection #
addr = (message[0], message[1])

# Socket Setup #
TCPSock = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
TCPSock.connect(addr)

# Send Message #
TCPSock.send(message[2].encode())

# Close Socket #
TCPSock.close()

exit(0)
