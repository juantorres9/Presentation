#!/usr/bin/python
import sys
from PyQt5 import QtWidgets
from mainWindow import Form
if __name__ == "__main__":
    # create Qt application
    app = QtWidgets.QApplication(sys.argv)
    #QObject.connect(app,SIGNAL("lastWindowClosed()"),app,SLOT("quit()"))

    # create and show Qt form
    form = Form()
    form.show()
    sys.exit(app.exec_())

    # enter Qt event-handling loop
    app.exec_loop()
