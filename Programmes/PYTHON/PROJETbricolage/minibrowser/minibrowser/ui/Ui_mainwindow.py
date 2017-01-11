# -*- coding: utf-8 -*-

# Form implementation generated from reading ui file 'C:\Job\eric4\tutorials\minibrowser2\eric4-project\minibrowser\ui\mainwindow.ui'
#
# Created: Wed Jul 01 10:31:21 2009
#      by: PyQt4 UI code generator 4.5
#
# WARNING! All changes made in this file will be lost!

from PyQt4 import QtCore, QtGui

class Ui_MainWindow(object):
    def setupUi(self, MainWindow):
        MainWindow.setObjectName("MainWindow")
        MainWindow.resize(800, 600)
        self.centralWidget = QtGui.QWidget(MainWindow)
        self.centralWidget.setObjectName("centralWidget")
        self.gridLayout = QtGui.QGridLayout(self.centralWidget)
        self.gridLayout.setObjectName("gridLayout")
        self.horizontalLayout = QtGui.QHBoxLayout()
        self.horizontalLayout.setObjectName("horizontalLayout")
        self.txtUrl = QtGui.QLineEdit(self.centralWidget)
        self.txtUrl.setObjectName("txtUrl")
        self.horizontalLayout.addWidget(self.txtUrl)
        self.btnNavigate = QtGui.QPushButton(self.centralWidget)
        self.btnNavigate.setObjectName("btnNavigate")
        self.horizontalLayout.addWidget(self.btnNavigate)
        self.gridLayout.addLayout(self.horizontalLayout, 0, 0, 1, 1)
        self.webView = QtWebKit.QWebView(self.centralWidget)
        self.webView.setUrl(QtCore.QUrl("about:blank"))
        self.webView.setObjectName("webView")
        self.gridLayout.addWidget(self.webView, 1, 0, 1, 1)
        MainWindow.setCentralWidget(self.centralWidget)

        self.retranslateUi(MainWindow)
        QtCore.QMetaObject.connectSlotsByName(MainWindow)

    def retranslateUi(self, MainWindow):
        MainWindow.setWindowTitle(QtGui.QApplication.translate("MainWindow", "MainWindow", None, QtGui.QApplication.UnicodeUTF8))
        self.btnNavigate.setText(QtGui.QApplication.translate("MainWindow", "Navigate", None, QtGui.QApplication.UnicodeUTF8))

from PyQt4 import QtWebKit

if __name__ == "__main__":
    import sys
    app = QtGui.QApplication(sys.argv)
    MainWindow = QtGui.QMainWindow()
    ui = Ui_MainWindow()
    ui.setupUi(MainWindow)
    MainWindow.show()
    sys.exit(app.exec_())

