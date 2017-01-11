# -*- coding: utf-8 -*-

"""
Module implementing Dialog.
"""

from PyQt5.QtCore import pyqtSlot
from PyQt5.QtWidgets import QDialog
from Ui_serveurUI import Ui_Dialog
from fonction1 import somme
import fonction1
import socket

HOST, PORT = "localhost", 9999

class Dialog(QDialog, Ui_Dialog):
    """
        Con
    Class documentation goes here.
    """
    def __init__(self, parent=None):
        """structor
        
        @param parent reference to the parent widget (QWidget)
        """
        super(Dialog, self).__init__(parent)
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
        print("le serveur ecoute a present sur le port  {}".format(PORT))
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
        
    
    @pyqtSlot()
    def on_pushButton_2_clicked(self):
        """
        Slot documentation goes here.
        """
        # TODO: not implemented yet
        #fonction1.table(11, 2)
        a=somme(4, 5)
        print (a)
        help("QDialog")
        fonction1.table(0, 5)
        #help("math")
     
        
