import socketserver, re

class MyTCPHandler(socketserver.BaseRequestHandler):
    """
    The RequestHandler class for our server.

    It is instantiated once per connection to the server, and must
    override the handle() method to implement communication to the
    client.
    """

    def handle(self):
      
        self.data1 = self.request.recv(1026).strip()
        requetS=self.data1.decode()
        m=re.findall(r'\w{2,8}', requetS)#diviser les mot en groups de [2 a 8] caracteres
        requet=m[0]#recuperer la mot 0 depuis la liste  pour comparer dans la condition IF suivante
        
        global etatValve1
        temp1Real=19
        
        if(requet=="gettemp"):
            self.request.sendall(str(temp1Real).encode())
        elif(requet=="settemp"):
            temp1Consigne=int(m[1])
            if(temp1Real<temp1Consigne):
                etatValve1="OFF"
            else:
                etatValve1="ON"
            self.request.sendall(m[1].encode())
        elif(requet=="getvalve"):
                self.request.sendall(etatValve1.encode())
        else:
            message="errer de syntax  tapez le bonne Commande"
            self.request.sendall(message.encode())
            
            
       
            
if __name__ == "__main__":
    HOST, PORT = "localhost", 9997

    # Create the server, binding to localhost on port 9999
    server = socketserver.TCPServer((HOST, PORT), MyTCPHandler)

    # Activate the server; this will keep running until you
    # interrupt the program with Ctrl-C
    server.serve_forever()
