cp qbittorrent qbittorrent.zs-old;
mv qbittorrent qbittorrent.zip;
engrampa -h *.zip;
pkg2appimage ./qbittorrent/recipe.yml;
rm ./qbittorrent/qbittorrent.AppDir/AppRun && cp ./qbittorrent/AppRun ./qbittorrent/qbittorrent.AppDir/ && chmod a+x ./qbittorrent/qbittorrent.AppDir/AppRun && cp ./qbittorrent/recipe.yml ./qbittorrent/qbittorrent.AppDir/ && ARCH=x86_64 appimagetool -n ./qbittorrent/qbittorrent.AppDir;
rm -R ./qbittorrent;
rm -R ./out;
rm ./qbittorrent.zip;
mv ./qBittorrent-x86_64.AppImage ./qbittorrent;
