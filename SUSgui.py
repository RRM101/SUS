from PyQt5 import QtWidgets
from PyQt5.QtWidgets import QApplication, QMainWindow, QLabel
from PyQt5.QtGui import QPixmap
import sys
import os
from notify import notification

if os.path.exists("./assets/sus.png"):
    pass
else:
    os.system("mkdir assets")
    os.system('wget https://github.com/RickRollMaster101/SUS/blob/main/assets/sus.png?raw=true -O assets/sus.png')

class SusWindow(QMainWindow):
    def __init__(self):
        super(SusWindow, self).__init__()
        self.setWindowTitle('SUS script GUI')
        self.setGeometry(500, 500, 500, 300)
        self.initUI()

    def initUI(self):
        os.system('clear')

        self.label = QLabel(self)
        self.pixmap = QPixmap('./assets/sus.png')
        self.label.setPixmap(self.pixmap)
        self.label.resize(self.pixmap.width(),
                          self.pixmap.height())
        self.label.move(100, -50)

        self.button1 = QtWidgets.QPushButton(self)
        self.button1.setText('Run SUS script')
        self.button1.clicked.connect(self.click1)
        self.button1.move(200, 200)

        self.button2 = QtWidgets.QPushButton(self)
        self.button2.setText('Exit')
        self.button2.clicked.connect(self.close)
        self.button2.move(200, 250)

        self.button3 = QtWidgets.QPushButton(self)
        self.button3.setText('Clone repo')
        self.button3.move(50, 200)
        self.button3.clicked.connect(self.click3)

        self.button4 = QtWidgets.QPushButton(self)
        self.button4.setText('Delete repo')
        self.button4.move(350, 200)
        self.button4.clicked.connect(self.click4)

        self.show()

    def click1(self):
        os.system('clear')
        notification('Running SUS script', app_name='SUS script GUI')
        if os.path.exists('SUS4py.sh') == True:
            os.system('sh SUS4py.sh')
        else:
            print('SUS4py.sh not found')
            print('Downloading SUS.sh from Github')
            os.system('wget https://raw.githubusercontent.com/RickRollMaster101/SUS/main/SUS4py.sh')
            os.system('sh SUS4py.sh')

    def click3(self):
        if os.path.exists('SUS/') == True:
            notification('SUS/ path already exists', app_name='SUS script GUI')
        else:
            os.system('clear')
            notification('Cloning repo', app_name='SUS script GUI')
            os.system('git clone --depth=1 https://github.com/RickRollMaster101/SUS.git')
            notification('Repo cloned', app_name='SUS script GUI')

    def click4(self):
        if os.path.exists('SUS/') == True:
            msg = QtWidgets.QMessageBox()
            msg.setIcon(QtWidgets.QMessageBox.Warning)
            msg.setText('Are you sure you want to delete the repo SUS?')
            msg.setWindowTitle('Delete SUS?')
            msg.setStandardButtons(QtWidgets.QMessageBox.Yes | QtWidgets.QMessageBox.No)
            msg.setDefaultButton(QtWidgets.QMessageBox.No)
            retval = msg.exec_()

            if retval == QtWidgets.QMessageBox.Yes:
                os.system('rm -rf SUS/')
                notification('SUS/ path deleted', app_name='SUS script GUI')

            if retval == QtWidgets.QMessageBox.No:
                notification('SUS/ path not deleted', app_name='SUS script GUI')
        else:
            notification('SUS/ path not found', app_name='SUS script GUI')



def window():
    app = QApplication(sys.argv)
    win = SusWindow()
    win.show()
    sys.exit(app.exec_())

window()