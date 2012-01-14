# Folders containing QML code to be shipped with the application
fmc.source = qml/forum-fmc
fmc.target = qml
tmo.source = qml/forum-tmo
tmo.target = qml
nokia.source = qml/forum-nokia
nokia.target = qml
xda.source = qml/forum-xda
xda.target = qml
DEPLOYMENTFOLDERS += fmc tmo nokia xda

include(forum-qml.pri)

# View header title image and splash image
images.files = images/meego.png
images.path = /opt/forum-fmc/images
splash.files = images/forum-fmc-splash.jpg
splash.path = /usr/share/themes/blanco/meegotouch/images/splash
INSTALLS += images splash

# Account provider definition and icon
provider.files = fmc.provider tmo.provider
provider.path = /usr/share/accounts/providers
providericon.files = images/icon-m-service-meego.png images/icon-m-service-maemo.png
providericon.path = /usr/share/themes/blanco/meegotouch/icons
INSTALLS += provider providericon

# Application settings
settings.files = forumsettings.xml
settings.path = /usr/share/duicontrolpanel/uidescriptions
INSTALLS += settings

# Please do not modify the following two lines. Required for deployment.
include(qmlapplicationviewer/qmlapplicationviewer.pri)
qtcAddDeployment()

unix {
    !isEmpty(MEEGO_VERSION_MAJOR) {
        desktopfile.files += forum-tmo_harmattan.desktop
        icon.files += forum-tmo80.png
    }
}
