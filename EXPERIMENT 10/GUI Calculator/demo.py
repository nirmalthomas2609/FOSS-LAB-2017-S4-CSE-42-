# -*- coding: utf-8 -*-

# Form implementation generated from reading ui file 'demo.ui'
#
# Created by: PyQt4 UI code generator 4.11.4
#
# WARNING! All changes made in this file will be lost!

from PyQt4 import QtCore, QtGui

try:
    _fromUtf8 = QtCore.QString.fromUtf8
except AttributeError:
    def _fromUtf8(s):
        return s

try:
    _encoding = QtGui.QApplication.UnicodeUTF8
    def _translate(context, text, disambig):
        return QtGui.QApplication.translate(context, text, disambig, _encoding)
except AttributeError:
    def _translate(context, text, disambig):
        return QtGui.QApplication.translate(context, text, disambig)

class Ui_MainWindow(object):
    def setupUi(self, MainWindow):
        MainWindow.setObjectName(_fromUtf8("MainWindow"))
        MainWindow.resize(800, 600)
        self.centralwidget = QtGui.QWidget(MainWindow)
        self.centralwidget.setObjectName(_fromUtf8("centralwidget"))
        self.lineEdit = QtGui.QLineEdit(self.centralwidget)
        self.lineEdit.setGeometry(QtCore.QRect(22, 16, 761, 61))
        self.lineEdit.setObjectName(_fromUtf8("lineEdit"))
        self.widget = QtGui.QWidget(self.centralwidget)
        self.widget.setGeometry(QtCore.QRect(20, 80, 761, 481))
        self.widget.setObjectName(_fromUtf8("widget"))
        self.gridLayout = QtGui.QGridLayout(self.widget)
        self.gridLayout.setObjectName(_fromUtf8("gridLayout"))
        self.pushButton = QtGui.QPushButton(self.widget)
        self.pushButton.setMaximumSize(QtCore.QSize(16777215, 27))
        self.pushButton.setObjectName(_fromUtf8("pushButton"))
        self.gridLayout.addWidget(self.pushButton, 0, 0, 1, 1)
        self.pushButton_2 = QtGui.QPushButton(self.widget)
        self.pushButton_2.setObjectName(_fromUtf8("pushButton_2"))
        self.gridLayout.addWidget(self.pushButton_2, 0, 1, 1, 1)
        self.pushButton_3 = QtGui.QPushButton(self.widget)
        self.pushButton_3.setObjectName(_fromUtf8("pushButton_3"))
        self.gridLayout.addWidget(self.pushButton_3, 0, 2, 1, 1)
        self.pushButton_13 = QtGui.QPushButton(self.widget)
        self.pushButton_13.setObjectName(_fromUtf8("pushButton_13"))
        self.gridLayout.addWidget(self.pushButton_13, 0, 3, 1, 1)
        self.pushButton_15 = QtGui.QPushButton(self.widget)
        self.pushButton_15.setObjectName(_fromUtf8("pushButton_15"))
        self.gridLayout.addWidget(self.pushButton_15, 1, 0, 1, 1)
        self.pushButton_6 = QtGui.QPushButton(self.widget)
        self.pushButton_6.setObjectName(_fromUtf8("pushButton_6"))
        self.gridLayout.addWidget(self.pushButton_6, 1, 1, 1, 1)
        self.pushButton_14 = QtGui.QPushButton(self.widget)
        self.pushButton_14.setObjectName(_fromUtf8("pushButton_14"))
        self.gridLayout.addWidget(self.pushButton_14, 1, 2, 1, 1)
        self.pushButton_12 = QtGui.QPushButton(self.widget)
        self.pushButton_12.setObjectName(_fromUtf8("pushButton_12"))
        self.gridLayout.addWidget(self.pushButton_12, 1, 3, 1, 1)
        self.pushButton_7 = QtGui.QPushButton(self.widget)
        self.pushButton_7.setObjectName(_fromUtf8("pushButton_7"))
        self.gridLayout.addWidget(self.pushButton_7, 2, 0, 1, 1)
        self.pushButton_5 = QtGui.QPushButton(self.widget)
        self.pushButton_5.setObjectName(_fromUtf8("pushButton_5"))
        self.gridLayout.addWidget(self.pushButton_5, 2, 1, 1, 1)
        self.pushButton_4 = QtGui.QPushButton(self.widget)
        self.pushButton_4.setObjectName(_fromUtf8("pushButton_4"))
        self.gridLayout.addWidget(self.pushButton_4, 2, 2, 1, 1)
        self.pushButton_11 = QtGui.QPushButton(self.widget)
        self.pushButton_11.setObjectName(_fromUtf8("pushButton_11"))
        self.gridLayout.addWidget(self.pushButton_11, 2, 3, 1, 1)
        self.pushButton_16 = QtGui.QPushButton(self.widget)
        self.pushButton_16.setObjectName(_fromUtf8("pushButton_16"))
        self.gridLayout.addWidget(self.pushButton_16, 3, 0, 1, 1)
        self.pushButton_8 = QtGui.QPushButton(self.widget)
        self.pushButton_8.setObjectName(_fromUtf8("pushButton_8"))
        self.gridLayout.addWidget(self.pushButton_8, 3, 1, 1, 1)
        self.pushButton_9 = QtGui.QPushButton(self.widget)
        self.pushButton_9.setObjectName(_fromUtf8("pushButton_9"))
        self.gridLayout.addWidget(self.pushButton_9, 3, 2, 1, 1)
        self.pushButton_10 = QtGui.QPushButton(self.widget)
        self.pushButton_10.setObjectName(_fromUtf8("pushButton_10"))
        self.gridLayout.addWidget(self.pushButton_10, 3, 3, 1, 1)
        MainWindow.setCentralWidget(self.centralwidget)

        self.retranslateUi(MainWindow)
        QtCore.QMetaObject.connectSlotsByName(MainWindow)

    def retranslateUi(self, MainWindow):
        MainWindow.setWindowTitle(_translate("MainWindow", "MainWindow", None))
        self.pushButton.setText(_translate("MainWindow", "1", None))
        self.pushButton_2.setText(_translate("MainWindow", "2", None))
        self.pushButton_3.setText(_translate("MainWindow", "3", None))
        self.pushButton_13.setText(_translate("MainWindow", "/", None))
        self.pushButton_15.setText(_translate("MainWindow", "4", None))
        self.pushButton_6.setText(_translate("MainWindow", "5", None))
        self.pushButton_14.setText(_translate("MainWindow", "6", None))
        self.pushButton_12.setText(_translate("MainWindow", "%", None))
        self.pushButton_7.setText(_translate("MainWindow", "7", None))
        self.pushButton_5.setText(_translate("MainWindow", "8", None))
        self.pushButton_4.setText(_translate("MainWindow", "9", None))
        self.pushButton_11.setText(_translate("MainWindow", "*", None))
        self.pushButton_16.setText(_translate("MainWindow", "0", None))
        self.pushButton_8.setText(_translate("MainWindow", "+", None))
        self.pushButton_9.setText(_translate("MainWindow", "-", None))
        self.pushButton_10.setText(_translate("MainWindow", "=", None))


if __name__ == "__main__":
    import sys
    app = QtGui.QApplication(sys.argv)
    MainWindow = QtGui.QMainWindow()
    ui = Ui_MainWindow()
    ui.setupUi(MainWindow)
    MainWindow.show()
    sys.exit(app.exec_())

