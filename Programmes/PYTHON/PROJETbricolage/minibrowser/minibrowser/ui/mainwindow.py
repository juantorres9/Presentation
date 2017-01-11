# -*- coding: utf-8 -*-

"""
This module contains the class MainWindow.
"""

from PyQt4.QtGui import QMainWindow
from PyQt4.QtCore import pyqtSignature,  QUrl

from Ui_mainwindow import Ui_MainWindow

class MainWindow(QMainWindow, Ui_MainWindow):
    """
    MainWindow: this is the class that manages all the funcionality of receiving input from the user, and navigating the internet.
    """
    def __init__(self, parent = None):
        """
        Default Constructor. It can receive a top window as parent. 
        """
        QMainWindow.__init__(self, parent)
        self.setupUi(self)
    
    @pyqtSignature("")
    def on_btnNavigate_released(self):
        """
        Public slot invoked when the user clicks the Navigate Button 
        """
        #TODO: check out this code, ensure it does cover all the posibilities
        theUrl = self.txtUrl.text()
        if theUrl[0:7] != 'http://':
            theUrl = 'http://' + theUrl
        self.webView.setUrl(QUrl(theUrl))
    
    @pyqtSignature("QString")
    def on_webView_titleChanged(self, title):
        """
        Public Slot invoked when the title of the page changes. All we do is to display it as the main window title.
        """
        self.setWindowTitle(title)
    
    @pyqtSignature("QUrl")
    def on_webView_urlChanged(self, url):
        """
        Public Slot invoked when the url changes. All we do is display the current url in txtUrl.
        """
        self.txtUrl.setText(url.toString())
