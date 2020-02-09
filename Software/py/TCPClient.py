import os
import sys
import argparse
import socket

host = "192.168.2.101"
port = 8000

parser = argparse.ArgumentParser(description="UDP Sender Script")
parser.add_argument("-f", "--file", dest="filename", default="", help="read data from FILE",
                    metavar="FILE")
parser.add_argument("-s", "--server", dest="server", default="",
                    help="destination host HOST", metavar="HOST")
parser.add_argument("-p", "--port", dest="port", default="", help="destination port PORT",
                    metavar="PORT")
parser.add_argument('cmd', nargs=argparse.REMAINDER)
args = parser.parse_args()

if args.server == "":
    host = "192.162.2.101"
else:
    host = args.server

if args.port == "":
    port = 8000
else:
    port = int(args.port)

if args.filename == "":
    data = ' '.join(args.cmd)
elif args.filename == "stdin":
    data = sys.stdin.readlines()
else:
    filename = os.path.abspath(args.filename)
    if not os.path.exists(filename):
        print >> sys.stderr, "The file %s does not exist!" % filename
        os._exit(1)
    with open(filename) as fh:
        data = fh.read()

addr = (host, port)
TCPSock = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
TCPSock.connect(addr)
TCPSock.send(data.encode())
TCPSock.close()
exit(0)
