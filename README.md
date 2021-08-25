# qBittorrent Stable AppImage
A script to create or update an AppImage of qBittorrent Stable

# usage
The qbittorrent-appimage-installer.sh file is needed to create the AppImage using [pkg2appimage](https://github.com/AppImage/pkg2appimage) and [appimagetool](https://github.com/AppImage/AppImageKit). Before proceeding assure you have a symlink in /bin for appimagetool and pkg2appimage or change the command in the script with the path of each AppImage. Fore example:

`pkg2appimage ./recipe.yml`
becomes
`/PATH/TO/pkg2appimage-{VERSION]-x86_64.AppImage ./recipe.yml`

`ARCH=x86_64 appimagetool -n ./qbittorrent/qbittorrent.AppDir`
becomes
`ARCH=x86_64 /PATH/TO/appimagetool-[version]-x86_64.AppImage -n ./qbittorrent/qbittorrent.AppDir`

Now all you need to do is to made the script executable:
`chmod a+x qbittorrent-appimage-installer.sh`

Then run the script:
`./qbittorrent-appimage-installer.sh`

A ready to use AppImage is also available [here](https://github.com/ivan-hc/qbittorrent-latest-appimage/releases)

# sources
[qBittorrent-stable from launchpad ppa:qbittorrent-team/qbittorrent-stable](https://launchpad.net/~qbittorrent-team/+archive/ubuntu/qbittorrent-stable)
`deb http://ppa.launchpad.net/qbittorrent-team/qbittorrent-stable/ubuntu focal main`
