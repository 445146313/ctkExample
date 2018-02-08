TEMPLATE = lib
TARGET = Client1
DESTDIR = $$PWD/../bin/plugins/$$TARGET
QT       += core gui
greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

#加载ctk库
macx: LIBS += -L$$PWD/../libs/ -lCTKCore.0.1.0
macx: LIBS += -L$$PWD/../libs/ -lCTKPluginFramework.0.1.0

INCLUDEPATH += $$PWD/../inclues \
        += $$PWD/../includes/core \
        += $$PWD/../includes/pluginFramework

INCLUDEPATH += $$PWD/../libs
DEPENDPATH += $$PWD/../libs

HEADERS += \
    client1activator.h \
    client1plugin.h \
    client1dlg.h

SOURCES += \
    client1activator.cpp \
    client1plugin.cpp \
    client1dlg.cpp

RESOURCES += \
    client1.qrc

FORMS += \
    client1dlg.ui
