# -*- coding: utf-8 -*-

"""
Module implementing Dialog.
"""
from PyQt5 import QtGui, QtWidgets
from PyQt5.QtCore import pyqtSlot, QPoint
from PyQt5.QtWidgets import QDialog

from Ui_selector import Ui_Dialog
p=QPoint(4, 2)

class Dialog(QDialog, Ui_Dialog):
    """
    Class documentation goes here.
    """
    def __init__(self, parent=None):
        """
        Constructor
        
        @param parent reference to the parent widget (QWidget)
        """
        super(Dialog, self).__init__(parent)
        self.setupUi(self)
    


    
    
    @pyqtSlot(QPoint)
    def on_mdiArea_customContextMenuRequested(self, pos):
        """
        Slot documentation goes here.
        """
        # TODO: not implemented yet
        raise NotImplementedError
    
    @pyqtSlot(int)
    def on_comboBox_currentIndexChanged(self, index):
        C=self.comboBox.currentText
        if(C=="Serveur1"):
            brush1 = QtGui.QBrush(QtGui.QColor(0, 0, 160))
            self.mdiArea.setBackground(brush1)
        elif(C=="Serveur2"):
            brush2 = QtGui.QBrush(QtGui.QColor(160, 0, 0))
            self.mdiArea.setBackground(brush2)
    
    @pyqtSlot(str)
    def on_comboBox_activated(self, p0):
        C2=self.comboBox.itemText(self.comboBox.currentIndex())
        brush1 = QtGui.QBrush(QtGui.QColor(160, 0, 0))
        brush2 = QtGui.QBrush(QtGui.QColor(160,160, 160))
        if(C2=="Serveur1"):
            self.mdiArea.setBackground(brush1)
            self.mdiArea_2.setBackground(brush2)
            self.mdiArea_3.setBackground(brush2)
        elif(C2=="Serveur2"):
            self.mdiArea.setBackground(brush2)
            self.mdiArea_2.setBackground(brush1)
            self.mdiArea_3.setBackground(brush2)
        elif(C2=="Serveur3"):
            self.mdiArea.setBackground(brush2)
            self.mdiArea_2.setBackground(brush2)
            self.mdiArea_3.setBackground(brush1)
