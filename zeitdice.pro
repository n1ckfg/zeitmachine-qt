#-------------------------------------------------
#
# zeitdice QMakefile
#
#-------------------------------------------------

QT += core gui widgets opengl

TARGET = zeitdice

TEMPLATE = app

VERSION = 0.1.0

CONFIG += c++11

HEADERS  += \
    glvideowidget.h \
    mainwindow.h \
    zeitengine.h \
    settingsdialog.h

SOURCES += \
    main.cpp \
    glvideowidget.cpp \
    mainwindow.cpp \
    zeitengine.cpp \
    settingsdialog.cpp

FORMS    += \
    mainwindow.ui \
    settingsdialog.ui

RESOURCES = zeitdice.qrc # menu icons and about image

win64 {

    # Coming up as well

}

mac {

    # Preliminary non-generic build configuration on Michael's OS X

    QMAKE_CXXFLAGS += \
        -I/Users/mschwanzer/Dropbox/WORK/ZEITDICE/qtapp-buildtool/installs/include

    LIBS += \
        -L/Users/mschwanzer/Dropbox/WORK/ZEITDICE/qtapp-buildtool/installs/lib \
        -lavfilter -lavformat -lavcodec -lswresample -lswscale -lavutil -lz -lx264 \
        -lQt5OpenGL -lQt5Widgets -lQt5Gui -lQt5Core \
        -L/Users/mschwanzer/Dropbox/WORK/ZEITDICE/qtapp-buildtool/installs/plugins/platforms -lqcocoa \
        -framework CoreFoundation -framework CoreVideo -framework VideoDecodeAcceleration

}

linux {

    # Preliminary non-generic build configuration on Simon's Fedora 21

    QMAKE_CXXFLAGS += \
        -I/home/simonrepp/zeitdice/qtapp-buildtool/installs/include

    LIBS += \
        -L/home/simonrepp/zeitdice/qtapp-buildtool/installs/lib \
        -lavfilter -lavformat -lavcodec -lswresample -lswscale -lavutil -lz -lx264 \
        -L/home/simonrepp/zeitdice/qtapp-buildtool/installs/plugins/platforms -lqxcb

}

OTHER_FILES += \
    .gitignore \
    splash.png \
    README.md