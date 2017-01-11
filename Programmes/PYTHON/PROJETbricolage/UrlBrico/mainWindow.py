# -*- coding: utf-8 -*-

"""
Module implementing MainWindow.
"""

from PyQt5.QtCore import pyqtSlot
from PyQt5.QtWidgets import QMainWindow

from Ui_mainWindow import Ui_MainWindow


class MainWindow(QMainWindow, Ui_MainWindow):
    """
    Class documentation goes here.
    """
    def __init__(self, parent=None):
        """
        Constructor
        
        @param parent reference to the parent widget (QWidget)
        """
        super(MainWindow, self).__init__(parent)
        self.setupUi(self)
    
    @pyqtSlot()
    def on_pushButton_clicked(self):
        """
        Slot documentation goes here.
        """    
    
        list1=['sortir', 'manger', 2007, 2009]  
        limit=len(list1)
        print ("hola monde mon list contient", limit, 'elements')
        for i in range(limit):
            print('le contenu  du list1 cest', list1[i])
        # TODO: not implemented yet
    
    @pyqtSlot(bool)
    def on_pushButton_2_clicked(self, checked):
        """
        Slot documentation goes here.
        """
        self.pushButton_2.setToolTip('hola fred')
        # TODO: not implemented yet
    
