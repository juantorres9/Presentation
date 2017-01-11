# -*- coding: utf-8 -*-

"""
Module implementing Dialog.
"""
from PyQt5 import QtCore
from PyQt5.QtCore import pyqtSlot
from PyQt5.QtWidgets import QDialog
import socket
#Global Variable Declaration
HOST, PORT, RPORT="localhost", 9999, 1024
from Ui_tempUI import Ui_Dialog

class Dialog(QDialog, Ui_Dialog):
    """
    Class documentation goes here.
    """
    def __init__(self, parent=None):
        super(Dialog, self).__init__(parent)
        self.setupUi(self)
 #       self.listWidget_2.setGeometry(QtCore.QRect(60, 150, 171, 91))
    
    @pyqtSlot()
    def on_pushButton_clicked(self):
        #Method pour GETTEMP1
        getTemp1="gettemp sys output" 
        sock = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
        try:
            sock.connect((HOST, PORT))
            sock.sendall(getTemp1.encode())
            # Receive data from the server and shut down
            temp1Real = sock.recv(RPORT).decode()
            self.textEdit.append(temp1Real)
            self.textEdit_2.append("**Requet getTemp recu **")
        finally:
            sock.close()
        
       
            
    
    @pyqtSlot()
    def on_pushButton_2_clicked(self):
        
        settemp1=self.textEdit_4.toPlainText()
        #strA="settemp 40 input"
       
        
        sock = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
        
        try:
            sock.connect((HOST, PORT))
            sock.sendall(settemp1.encode())
            # Receive data from the server and shut down
            tempConsigne = sock.recv(RPORT).decode()
            self.textEdit_2.append("**Requet setTemp "+tempConsigne+" reussi**")
            
        finally:
            sock.close()
        
      
      
    
    @pyqtSlot()
    def on_pushButton_3_clicked(self):
        getValve1="getvalve sys output"
        sock = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
        try:
            sock.connect((HOST, PORT))
            sock.sendall(getValve1.encode())
            # Receive data from the server and shut down
            etatValve1 = sock.recv(RPORT).decode()
            self.textEdit_3.append(etatValve1)
            self.textEdit_2.append("**Requet getValve recu **")
        finally:
            sock.close()
    
    @pyqtSlot()
    def on_pushButton_4_clicked(self):
        print("hola")
