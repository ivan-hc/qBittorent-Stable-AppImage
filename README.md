# qBittorrent AppImage with automatic updates
A script to create AppImage of qBittorrent Stable for 86_x64 with automatic updates.

This will create an /opt/qbittorrent folder containing the AppImage, a launcher in /usr/share/applications and a script in /usr/local/bin that will check for newer versions of qBittorrent from launchpad (SOURCE at [ppa:qbittorrent-team/qbittorrent-stable](https://launchpad.net/~qbittorrent-team/+archive/ubuntu/qbittorrent-stable)).

# Requirements
To made this appimage updateable, the following requirements must been always present into your system:
- [pkg2appimage](https://github.com/AppImage/pkg2appimage)
- [appimagetool](https://github.com/AppImage/AppImageKit)

To install them, just copy/paste the following commands:

`wget https://raw.githubusercontent.com/ivan-hc/AM-application-manager/main/programs/x86_64/appimagetool`

`wget https://raw.githubusercontent.com/ivan-hc/AM-application-manager/main/programs/x86_64/pkg2appimage`

`chmod a+x ./appimagetool ./pkg2appimage`

`sudo ./appimagetool`

`sudo ./pkg2appimage`

# Install/create qBittorrent AppImage

`wget https://raw.githubusercontent.com/ivan-hc/AM-application-manager/main/programs/x86_64/qbittorrent`

`chmod a+x ./qbittorrent`

`sudo ./qbittorrent`

Now just use qbittorrent, the check for updates will start each time you run the program.

------------------------------------
# This and more scripts will be available on my new repository, at [ivan-hc/AM-application-manager](https://github.com/ivan-hc/AM-application-manager).
