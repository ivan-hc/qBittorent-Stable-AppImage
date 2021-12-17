# qBittorrent AppImage with automatic updates
A script to create AppImage of qBittorrent Stable for 86_x64 that is able to be updated using a command.

# Install/create qBittorrent AppImage
The script will create an /opt/qbittorrent folder containing the AppImage, a launcher in /usr/share/applications and a link in /usr/local/bin

`wget https://raw.githubusercontent.com/ivan-hc/qBittorrent-AppImage-with-automatic-updates-/main/qbittorrent`

`chmod a+x ./qbittorrent`

`sudo ./qbittorrent`

Now just use qbittorrent, the check for updates will start each time you run the program.

# Update
Updates are manage by a script in the folder of the program, just launch the command:

`./opt/qbittorrent/AM-updater`

# Install/update qBittorrent using the "[AM](https://github.com/ivan-hc/AM-application-manager)" command
Install the program with `sudo am -i qbittorrent`

Update the program with `am -u` (without "sudo").

------------------------------------
# This and more scripts will be available on my new repository, at [ivan-hc/AM-application-manager](https://github.com/ivan-hc/AM-application-manager).
