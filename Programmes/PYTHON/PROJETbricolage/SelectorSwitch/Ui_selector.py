# -*- coding: utf-8 -*-

# Form implementation generated from reading ui file 'C:\Users\juantorres\TOTAL\PYTHON\PROJETbricolage\SelectorSwitch\selector.ui'
#
# Created by: PyQt5 UI code generator 5.5
#
# WARNING! All changes made in this file will be lost!

from PyQt5 import QtCore, QtGui, QtWidgets

class Ui_Dialog(object):
    def setupUi(self, Dialog):
        Dialog.setObjectName("Dialog")
        Dialog.resize(400, 300)
        Dialog.setSizeGripEnabled(True)
        self.comboBox = QtWidgets.QComboBox(Dialog)
        self.comboBox.setGeometry(QtCore.QRect(50, 80, 69, 22))
        self.comboBox.setObjectName("comboBox")
        self.comboBox.addItem("")
        self.comboBox.addItem("")
        self.comboBox.addItem("")
        self.label = QtWidgets.QLabel(Dialog)
        self.label.setGeometry(QtCore.QRect(150, 220, 47, 13))
        self.label.setText("")
        self.label.setObjectName("label")
        self.mdiArea = QtWidgets.QMdiArea(Dialog)
        self.mdiArea.setGeometry(QtCore.QRect(180, 50, 20, 21))
        brush = QtGui.QBrush(QtGui.QColor(160, 160, 160))
        brush.setStyle(QtCore.Qt.SolidPattern)
        self.mdiArea.setBackground(brush)
        self.mdiArea.setObjectName("mdiArea")
        self.mdiArea_2 = QtWidgets.QMdiArea(Dialog)
        self.mdiArea_2.setGeometry(QtCore.QRect(180, 90, 20, 21))
        brush = QtGui.QBrush(QtGui.QColor(160, 160, 160))
        brush.setStyle(QtCore.Qt.SolidPattern)
        self.mdiArea_2.setBackground(brush)
        self.mdiArea_2.setObjectName("mdiArea_2")
        self.mdiArea_3 = QtWidgets.QMdiArea(Dialog)
        self.mdiArea_3.setGeometry(QtCore.QRect(180, 130, 20, 21))
        brush = QtGui.QBrush(QtGui.QColor(160, 160, 160))
        brush.setStyle(QtCore.Qt.SolidPattern)
        self.mdiArea_3.setBackground(brush)
        self.mdiArea_3.setObjectName("mdiArea_3")

        self.retranslateUi(Dialog)
        QtCore.QMetaObject.connectSlotsByName(Dialog)

    def retranslateUi(self, Dialog):
        _translate = QtCore.QCoreApplication.translate
        Dialog.setWindowTitle(_translate("Dialog", "Dialog"))
        self.comboBox.setItemText(0, _translate("Dialog", "Serveur1"))
        self.comboBox.setItemText(1, _translate("Dialog", "Serveur2"))
        self.comboBox.setItemText(2, _translate("Dialog", "Serveur3"))


if __name__ == "__main__":
    import sys
    app = QtWidgets.QApplication(sys.argv)
    Dialog = QtWidgets.QDialog()
    ui = Ui_Dialog()
    ui.setupUi(Dialog)
    Dialog.show()
    sys.exit(app.exec_())

