#!/bin/sh

mkdir tmp;
cd tmp;

echo 'app: qbittorrent
binpatch: true

ingredients:
  dist: focal
  ppas:
    - qbittorrent-team/qbittorrent-stable
  packages:
    - qbittorrent
    - libtorrent-rasterbar' >> recipe.yml;

pkg2appimage ./recipe.yml;

rm ./qbittorrent/qbittorrent.AppDir/AppRun;

echo '#!/bin/sh
SELF=$(readlink -f "$0")
HERE=${SELF%/*}
export PATH="${HERE}/usr/bin/:${HERE}/usr/lib/mime/packages/:${HERE}/usr/lib/x86_64-linux-gnu/:${HERE}/usr/share/doc/libtorrent-rasterbar10/:${HERE}/usr/share/doc/qbittorrent/:${HERE}/usr/man/man1/:${HERE}/usr/share/metainfo/${PATH:+:$PATH}"
export LD_LIBRARY_PATH="${HERE}/usr/lib/:${HERE}/usr/lib/x86_64-linux-gnu/:${HERE}/usr/lib/mime/:${HERE}/usr/share/doc/libtorrent-rasterbar10/:${HERE}/usr/share/doc/qbittorrent/${LD_LIBRARY_PATH:+:$LD_LIBRARY_PATH}"
export XDG_DATA_DIRS="${HERE}/usr/share/${XDG_DATA_DIRS:+:$XDG_DATA_DIRS}"
EXEC="${HERE}/usr/bin/qbittorrent"
EXEC=$(grep -e '^Exec=.*' "${HERE}"/*.desktop | head -n 1 | cut -d "=" -f 2 | cut -d " " -f 1)
exec "${EXEC}" "$@"' >> ./qbittorrent/qbittorrent.AppDir/AppRun;

chmod a+x ./qbittorrent/qbittorrent.AppDir/AppRun;
ARCH=x86_64 appimagetool -n ./qbittorrent/qbittorrent.AppDir;

cd ..;
mv ./tmp/*.AppImage ./;
rm -R tmp

