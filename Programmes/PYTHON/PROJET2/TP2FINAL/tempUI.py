# -*- coding: utf-8 -*-

"""
Module implementing Dialog.
"""
from PyQt5 import QtGui
from PyQt5.QtCore import pyqtSlot
from PyQt5.QtWidgets import QDialog
import socket, re
#Global Variable Declaration
HOST="localhost"
global RPORT, PORT, selector


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
        #Method pour Obtenir Temperature 1
        getTemp1=self.textEdit_7.toPlainText()  
        #getTemp1="gettemp sys output" 
       #Instruction a envoyer="gettemp sys output" 
        if(self.selector==1):
            if((getTemp1=="gettemp sys output")and(self.selector==1)):
                sock = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
                try:
                    sock.connect((HOST, self.PORT))
                    sock.sendall(getTemp1.encode())
                    # Receive data from the server and shut down
                    temp1Real = sock.recv(self.RPORT).decode()
                    self.textEdit.append(temp1Real)
                    self.textEdit_2.append("**Requet getTemp recu **")
                finally:
                    sock.close()
            else:
                self.textEdit_2.append("Erreur Commande")
            
       
            
    
    @pyqtSlot()
    def on_pushButton_2_clicked(self):
        #Method pour Regler(SET) la  Temperature 1 Consigne
        settemp1=self.textEdit_7.toPlainText()
        #settemp1="settemp 28 input" 
       #Instruction a envoyer="settemp 40 input" 
        m2=re.findall(r'\w{2,8}',settemp1)
        if(self.selector==1):
            if((m2[0]=="settemp")and(self.selector==1)):
                sock = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
                try:
                    sock.connect((HOST, self.PORT))
                    sock.sendall(settemp1.encode())
                    # Receive data from the server and shut down
                    tempConsigne = sock.recv(self.RPORT).decode()
                    self.textEdit_4.append(tempConsigne+" °C")
                    self.textEdit_2.append("**Requet setTemp "+tempConsigne+" reussi**")
                finally:
                    sock.close()
            else:
                self.textEdit_2.append("Erreur Commande")
        
      
      
    
    @pyqtSlot()
    def on_pushButton_3_clicked(self):
        #Method pour Obtenir  l'etat de la valve 1
        getValve1=self.textEdit_7.toPlainText()
        #getValve1="getvalve sys output"
       #Instruction a envoyer="getvalve sys output"
        if(self.selector==1):
            if((getValve1=="getvalve sys output")and(self.selector==1)):
                sock = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
                try:
                    sock.connect((HOST, self.PORT))
                    sock.sendall(getValve1.encode())
                    # Receive data from the server and shut down
                    etatValve1 = sock.recv(self.RPORT).decode()
                    self.textEdit_3.append(etatValve1)
                    self.textEdit_2.append("**Requet getValve recu **")
                finally:
                    sock.close()
            else:
                self.textEdit_2.append("Erreur Commande")
    

#***************************************************************************************************  
#********************************************SERVEUR 2******************************************************   
    
    @pyqtSlot()
    def on_pushButton_4_clicked(self):
     #Method pour Obtenir  l'etat de la valve 1
        getValve1=self.textEdit_7.toPlainText()
        #getValve1="getvalve sys output"
       #Instruction a envoyer="getvalve sys output"
        if(self.selector==2):
            if((getValve1=="getvalve sys output")and (self.selector==2)):
                sock = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
                try:
                    sock.connect((HOST, self.PORT))
                    sock.sendall(getValve1.encode())
                    # Receive data from the server and shut down
                    etatValve1 = sock.recv(self.RPORT).decode()
                    self.textEdit_10.append(etatValve1)
                    self.textEdit_2.append("**Requet getValve recu **")
                finally:
                    sock.close()
            else:
                self.textEdit_2.append("Erreur Commande")
            
            
    @pyqtSlot()
    def on_pushButton_5_clicked(self):
       #Method pour Regler(SET) la  Temperature 1 Consigne
        settemp1=self.textEdit_7.toPlainText()
        #settemp1="settemp 28 input" 
       #Instruction a envoyer="settemp 40 input" 
        m2=re.findall(r'\w{2,8}',settemp1)
        if(self.selector==2):
            if((m2[0]=="settemp")and(self.selector==2)):
                sock = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
                try:
                    sock.connect((HOST, self.PORT))
                    sock.sendall(settemp1.encode())
                    # Receive data from the server and shut down
                    tempConsigne = sock.recv(self.RPORT).decode()
                    self.textEdit_6.append(tempConsigne+" °C")
                    self.textEdit_2.append("**Requet setTemp "+tempConsigne+" reussi**")
                finally:
                    sock.close()
            else:
                self.textEdit_2.append("Erreur Commande")
             
    
    @pyqtSlot()
    def on_pushButton_6_clicked(self):
  #Method pour Obtenir Temperature 1
        getTemp1=self.textEdit_7.toPlainText()  
        #getTemp1="gettemp sys output" 
       #Instruction a envoyer="gettemp sys output" 
        if(self.selector==2):
            if((getTemp1=="gettemp sys output")and(self.selector==2)):
                sock = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
                try:
                    sock.connect((HOST, self.PORT))
                    sock.sendall(getTemp1.encode())
                    # Receive data from the server and shut down
                    temp1Real = sock.recv(self.RPORT).decode()
                    self.textEdit_9.append(temp1Real)
                    self.textEdit_2.append("**Requet getTemp recu **")
                finally:
                    sock.close()
            else:
                self.textEdit_2.append("Erreur Commande")
            
       
    
 
    
#***************************************************************************************************  
#********************************************SERVEUR 3******************************************************   
    
    @pyqtSlot()
    def on_pushButton_7_clicked(self):
     #Method pour Obtenir  l'etat de la valve 1
        getValve1=self.textEdit_7.toPlainText()
        #getValve1="getvalve sys output"
       #Instruction a envoyer="getvalve sys output"
        if(self.selector==3):
            if((getValve1=="getvalve sys output")and (self.selector==3)):
                sock = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
                try:
                    sock.connect((HOST, self.PORT))
                    sock.sendall(getValve1.encode())
                    # Receive data from the server and shut down
                    etatValve1 = sock.recv(self.RPORT).decode()
                    self.textEdit_11.append(etatValve1)
                    self.textEdit_2.append("**Requet getValve recu **")
                finally:
                    sock.close()
            else:
                self.textEdit_2.append("Erreur Commande")
    
    @pyqtSlot()
    def on_pushButton_8_clicked(self):
  #Method pour Obtenir Temperature 1
        getTemp1=self.textEdit_7.toPlainText()  
        #getTemp1="gettemp sys output" 
       #Instruction a envoyer="gettemp sys output" 
        if(self.selector==3):
            if((getTemp1=="gettemp sys output")and(self.selector==3)):
                sock = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
                try:
                    sock.connect((HOST, self.PORT))
                    sock.sendall(getTemp1.encode())
                    # Receive data from the server and shut down
                    temp1Real = sock.recv(self.RPORT).decode()
                    self.textEdit_12.append(temp1Real)
                    self.textEdit_2.append("**Requet getTemp recu **")
                finally:
                    sock.close()
            else:
                self.textEdit_2.append("Erreur Commande")
    
    @pyqtSlot()
    def on_pushButton_9_clicked(self):
       #Method pour Regler(SET) la  Temperature 1 Consigne
        settemp1=self.textEdit_7.toPlainText()
        #settemp1="settemp 21 input" 
       #Instruction a envoyer="settemp 40 input" 
        m2=re.findall(r'\w{2,8}',settemp1)
        if(self.selector==3):
            if((m2[0]=="settemp")and(self.selector==3)):
                sock = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
                try:
                    sock.connect((HOST, self.PORT))
                    sock.sendall(settemp1.encode())
                    # Receive data from the server and shut down
                    tempConsigne = sock.recv(self.RPORT).decode()
                    self.textEdit_8.append(tempConsigne+" °C")
                    self.textEdit_2.append("**Requet setTemp "+tempConsigne+" reussi**")
                finally:
                    sock.close()
            else:
                self.textEdit_2.append("Erreur Commande")
             

#***************************************************************************************************  
#********************************************COMBOBOX SETUP******************************************************   
    

    @pyqtSlot(str)
    def on_comboBox_activated(self, p0):
        """
        Slot documentation goes here.
        """
        C2=self.comboBox.itemText(self.comboBox.currentIndex())
        brush1 = QtGui.QBrush(QtGui.QColor(160, 0, 0))
        brush2 = QtGui.QBrush(QtGui.QColor(160,160, 160))
        if(C2=="Serveur1"):
            self.mdiArea.setBackground(brush1)
            self.mdiArea_2.setBackground(brush2)
            self.mdiArea_3.setBackground(brush2)
            self.RPORT=1024
            self.PORT=9999
            self.selector=1
        elif(C2=="Serveur2"):
            self.mdiArea.setBackground(brush2)
            self.mdiArea_2.setBackground(brush1)
            self.mdiArea_3.setBackground(brush2)
            self.RPORT=1025
            self.PORT=9998
            self.selector=2
        elif(C2=="Serveur3"):
            self.mdiArea.setBackground(brush2)
            self.mdiArea_2.setBackground(brush2)
            self.mdiArea_3.setBackground(brush1)
            self.RPORT=1026
            self.PORT=9997
            self.selector=3
        self.textEdit_5.append("port"+str(self.RPORT))
    
   
