# qbittorrent-latest-appimage
A script to create and update an AppImage of qBittorrent from ppa:qbittorrent-team/qbittorrent-stable

# content
This repo cointains an appimage of qBittorrent-stable (named "qbittorrent"), the version is for Ubuntu 20.04, the qbittorrent-updater.sh file is needed to update the AppImage.

# requirements
- pkg2appimage from https://github.com/AppImage/pkg2appimage
- appimagetool from https://github.com/AppImage/AppImageKit
- engrampa (or a file extractor that supports appimages converted/renamed in zip format)

# usage
All you need to do is to made the two files executable: chmod a+x qbittorrent qbittorrent-updater.sh

# sources
qBittorrent-stable from https://launchpad.net/~qbittorrent-team/+archive/ubuntu/qbittorrent-stable
deb http://ppa.launchpad.net/qbittorrent-team/qbittorrent-stable/ubuntu focal main 
