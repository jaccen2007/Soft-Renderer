#-------------------------------------------------
#
# Project created by QtCreator 2019-04-28T14:58:01
#
#-------------------------------------------------

QT       += core gui

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

TARGET = SoftRenderer
TEMPLATE = app

# The following define makes your compiler emit warnings if you use
# any feature of Qt which has been marked as deprecated (the exact warnings
# depend on your compiler). Please consult the documentation of the
# deprecated API in order to know how to port your code away from it.
DEFINES += QT_DEPRECATED_WARNINGS

# You can also make your code fail to compile if you use deprecated APIs.
# In order to do so, uncomment the following line.
# You can also select to disable deprecated APIs only up to a certain version of Qt.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

CONFIG += c++11

SOURCES += \
        main.cpp \
        Window.cpp \
    SoftRenderer/Math/Vector2D.cpp \
    SoftRenderer/Math/Vector3D.cpp \
    SoftRenderer/Math/Vector4D.cpp \
    SoftRenderer/Math/Matrix4x4.cpp \
    RenderThread.cpp \
    SoftRenderer/Mesh.cpp \
    SoftRenderer/BaseShader.cpp \
    SoftRenderer/FrameBuffer.cpp \
    SoftRenderer/Pipeline.cpp \
    SoftRenderer/SimpleShader.cpp \
    RenderLoop.cpp

HEADERS += \
        Window.h \
    SoftRenderer/Math/MathUtils.h \
    SoftRenderer/Math/Vector2D.h \
    SoftRenderer/Math/Vector3D.h \
    SoftRenderer/Math/Vector4D.h \
    SoftRenderer/Math/Matrix4x4.h \
    RenderThread.h \
    SoftRenderer/Mesh.h \
    SoftRenderer/BaseShader.h \
    SoftRenderer/FrameBuffer.h \
    SoftRenderer/Pipeline.h \
    SoftRenderer/SimpleShader.h \
    RenderLoop.h

FORMS += \
        Window.ui

# Default rules for deployment.
qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target

win32: LIBS += -L$$PWD/lib/ -ltbb

INCLUDEPATH += $$PWD/include
DEPENDPATH += $$PWD/include