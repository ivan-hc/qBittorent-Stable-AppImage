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
HERE="$(dirname "$(readlink -f "${0}")")"
export LD_LIBRARY_PATH="${HERE}/usr/lib/:${HERE}/usr/lib/x86_64-linux-gnu/:${HERE}/usr/lib/mime/${LD_LIBRARY_PATH:+:$LD_LIBRARY_PATH}"
export XDG_DATA_DIRS="${HERE}/usr/share/${XDG_DATA_DIRS:+:$XDG_DATA_DIRS}"
EXEC="${HERE}/usr/bin/qbittorrent"
exec "${EXEC}"' >> ./qbittorrent/qbittorrent.AppDir/AppRun;

chmod a+x ./qbittorrent/qbittorrent.AppDir/AppRun;
ARCH=x86_64 appimagetool -n ./qbittorrent/qbittorrent.AppDir;

cd ..;
mv ./tmp/*.AppImage ./;
rm -R tmp

