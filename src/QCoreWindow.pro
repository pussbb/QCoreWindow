#-------------------------------------------------
#
# Project created by QtCreator 2012-05-26T21:55:51
#
#-------------------------------------------------

TARGET = QCoreWindow
TEMPLATE = lib
CONFIG += staticlib

SOURCES += qcorewindow.cpp

HEADERS += qcorewindow.h


RESOURCES += \
    resource/lang.qrc

unix{
    OBJECTS_DIR = ./obj/
    MOC_DIR = ./obj/
    DESTDIR = ../bin/
    UI_DIR = ./obj/
}

unix:!symbian {
    maemo5 {
        target.path = /opt/usr/lib
    } else {
        target.path = /usr/lib
    }
    INSTALLS += target
}

