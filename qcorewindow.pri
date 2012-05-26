 
win32:CONFIG(release, debug|release): LIBS += -L$$PWD/bin/ -lQCoreWindow
else:win32:CONFIG(debug, debug|release): LIBS += -L$$PWD/bin/ -lQCoreWindowd
else:symbian: LIBS += -lQCoreWindow
else:unix: LIBS += -L$$PWD/bin/ -lQCoreWindow

INCLUDEPATH += $$PWD/src
DEPENDPATH += $$PWD/src

win32:CONFIG(release, debug|release): PRE_TARGETDEPS += $$PWD/bin/QCoreWindow.lib
else:win32:CONFIG(debug, debug|release): PRE_TARGETDEPS += $$PWD/bin/QCoreWindowd.lib
else:unix:!symbian: PRE_TARGETDEPS += $$PWD/bin/libQCoreWindow.a

unix:{
  QMAKE_LFLAGS += -Wl,--rpath=$$PWD/bin/
  QMAKE_LFLAGS_RPATH=
}