import socket
import sys
host, port='localhost', 9999
s=socket.socket(socket.AF_INET, socket.SOCK_STREAM)
s.bind((host, port))
print("serveur écoute en port{}".format(port))

s.connect((host, port))
data="hola"

s.sendall(data.encode()+b"\n")


