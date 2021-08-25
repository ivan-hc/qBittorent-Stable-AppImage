# qBittorrent Stable AppImage
A script to create or update an AppImage of qBittorrent Stable. A ready to use AppImage is also available [here](https://github.com/ivan-hc/qbittorrent-latest-appimage/releases)

# script usage
The qbittorrent-appimage-installer.sh file is needed to create the AppImage using [pkg2appimage](https://github.com/AppImage/pkg2appimage) and [appimagetool](https://github.com/AppImage/AppImageKit). Before proceeding it's better to create symlinks in /usr/bin for a better workflow with appimagetool and pkg2appimage or change the command in the script with the path of each AppImage (if this works for you). Fore example:

`pkg2appimage ./recipe.yml`

become

`/PATH/TO/pkg2appimage-{VERSION]-x86_64.AppImage ./recipe.yml`

and

`ARCH=x86_64 appimagetool -n ./qbittorrent/qbittorrent.AppDir`

become

`ARCH=x86_64 /PATH/TO/appimagetool-[version]-x86_64.AppImage -n ./qbittorrent/qbittorrent.AppDir`

Now all you need to do is to made the script executable:

`chmod a+x qbittorrent-appimage-installer.sh`

Then run the script:

`./qbittorrent-appimage-installer.sh`

However, this wont work for me. I've created symlinks in /usr/bin this way:

`ln -s /PATH/TO/pkg2appimage-{VERSION}-x64_64.AppImage /usr/bin/pkg2appimage

ln -s /PATH/TO/appimagetool-{VERSION}-x64_64.AppImage /usr/bin/appimagetool'

If you use Debian or its derivatives (Ubuntu, Mint, Zorin, Pop_OS...) you can rely on my .deb packages [in this repository](https://github.com/ivan-hc/AppImage-Tools-for-Debian)

# sources
[qBittorrent-stable from launchpad ppa:qbittorrent-team/qbittorrent-stable](https://launchpad.net/~qbittorrent-team/+archive/ubuntu/qbittorrent-stable)

`deb http://ppa.launchpad.net/qbittorrent-team/qbittorrent-stable/ubuntu focal main`
