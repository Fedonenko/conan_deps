QT -= gui

CONFIG += c++11 console conan_basic_setup
CONFIG -= app_bundle

# You can make your code fail to compile if it uses deprecated APIs.
# In order to do so, uncomment the following line.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

SOURCES += \
        main.cpp

# Default rules for deployment.
qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target

DISTFILES += \
    conanfile.txt \
    local_update_deps.bat

!exists("conanbuildinfo.props") {
    message("Start local_update_deps")
    system("local_update_deps.bat"): HAS_BIN = TRUE
    message("End local_update_deps")
}

!include(conanbuildinfo.pri) {
    error("Error! File conanbuildinfo.pri not found!")
}
