# -*- coding: utf-8 -*-

"""
Module implementing Form.
"""

from PyQt5.QtCore import pyqtSlot
from PyQt5.QtWidgets import QDialog

from Ui_button import Ui_Dialog


class Form(QDialog, Ui_Dialog):
    """
    Class documentation goes here.
    """
    def __init__(self, parent=None):
        """
        Constructor
        
        @param parent reference to the parent widget (QWidget)
        """
        super(Form, self).__init__(parent)
        self.setupUi(self)
    
    @pyqtSlot()
    def on_buttonBox_accepted(self):
        
        print('button pressé')
        
        # TODO: not implemented yet
        
    
    @pyqtSlot()
    def on_pushButton_clicked(self):
        """
        Slot documentation goes here.
        """
        print("hello")
     # TODO: not implemented yet
    
    @pyqtSlot(QModelIndex)
    def on_listView_activated(self, index):
        
        # TODO: not implemented yet
        raise NotImplementedError
