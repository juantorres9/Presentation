# -*- coding: utf-8 -*-


"""
Module implementing Form2.
"""

from PyQt5.QtCore import pyqtSlot
from PyQt5.QtWidgets import QWidget

from Ui_app2 import Ui_Form
import socket


HOST, PORT = "localhost", 9999

class Form2(QWidget, Ui_Form):
    """
    Class documentation goes here.
    """
    def __init__(self, parent=None):
        """
        Constructor
        
        @param parent reference to the parent widget (QWidget)
        """
    
        super(Form2, self).__init__(parent)
        self.setupUi(self)
    
    @pyqtSlot()
    def on_pushButton_clicked(self):
        """
        Slot documentation goes here.
        """
        # TODO: not implemented yet
   
        data = self.textEdit.toPlainText()

    # Create a socket (SOCK_STREAM means a TCP socket)
        sock = socket.socket(socket.AF_INET, socket.SOCK_STREAM)

        try:
        # Connect to server and send data
            sock.connect((HOST, PORT))
            sock.sendall(data.encode() + b"\n")

        # Receive data from the server and shut down
            received = sock.recv(1024).decode()
            self.textEdit_2.append(received)
        finally:
            sock.close()
            
        print("Sent:     {}".format(data))
        print("Received: {}".format(received))

      
