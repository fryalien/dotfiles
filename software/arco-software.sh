#!/bin/bash

# INSTALL PACKAGES
sudo pacman -S --noconfirm --needed calibre
sudo pacman -S --noconfirm --needed eza
sudo pacman -S --noconfirm --needed fastfetch
sudo pacman -S --noconfirm --needed fish
sudo pacman -S --noconfirm --needed fzf
sudo pacman -S --noconfirm --needed gparted
sudo pacman -S --noconfirm --needed gzip
sudo pacman -S --noconfirm --needed dos2unix
sudo pacman -S --noconfirm --needed imagemagick
sudo pacman -S --noconfirm --needed kbackup
sudo pacman -S --noconfirm --needed meld
sudo pacman -S --noconfirm --needed micro
sudo pacman -S --noconfirm --needed mpv
sudo pacman -S --noconfirm --needed nextcloud-client
sudo pacman -S --noconfirm --needed obs-studio
sudo pacman -S --noconfirm --needed onlyoffice-bin
sudo pacman -S --noconfirm --needed p7zip
sudo pacman -S --noconfirm --needed rate-mirrors-bin
sudo pacman -S --noconfirm --needed ripgrep
sudo pacman -S --noconfirm --needed rsync
sudo pacman -S --noconfirm --needed spotify
sudo pacman -S --noconfirm --needed tenacity
sudo pacman -S --noconfirm --needed unace
sudo pacman -S --noconfirm --needed unrar
sudo pacman -S --noconfirm --needed unzip
sudo pacman -S --noconfirm --needed vivaldi
sudo pacman -S --noconfirm --needed vivaldi-ffmpeg-codecs
sudo pacman -S --noconfirm --needed vivaldi-widevine
sudo pacman -S --noconfirm --needed vlc
sudo pacman -S --noconfirm --needed wireshark-qt
sudo pacman -S --noconfirm --needed yt-dlp
sudo pacman -S --noconfirm --needed ufw gufw

yay -S --noconfirm --needed paru
paru -S --noconfirm --needed freefilesync-bin
paru -S --noconfirm --needed localsend-bin
paru -S --noconfirm --needed megasync-bin
paru -S --noconfirm --needed rustdesk-bin

# THUNAR
sudo pacman -S --noconfirm --needed thunar
sudo pacman -S --noconfirm --needed thunar-archive-plugin
sudo pacman -S --noconfirm --needed thunar-volman

# FLATPACKS
#paru -S --noconfirm --needed freetube-bin
#paru -S --noconfirm --needed github-desktop-bin
#paru -S --noconfirm --needed parabolic-git
#paru -S --noconfirm --needed syncthing-gtk
#paru -S --noconfirm --needed ungoogled-chromium
#sudo pacman -S --noconfirm --needed brave-bin
#sudo pacman -S --noconfirm --needed keepassxc
#sudo pacman -S --noconfirm --needed librewolf-bin
#sudo pacman -S --noconfirm --needed obsidian
#sudo pacman -S --noconfirm --needed qbittorrent
#sudo pacman -S --noconfirm --needed signal-desktop
#sudo pacman -S --noconfirm --needed vscodium
flatpak install -y com.brave.Browser
flatpak install -y com.vscodium.codium
flatpak install -y io.freetubeapp.FreeTube
flatpak install -y io.github.shiftey.Desktop #GitHub Desktop
flatpak install -y io.github.ungoogled_software.ungoogled_chromium
flatpak install -y io.gitlab.librewolf-community
flatpak install -y md.obsidian.Obsidian
flatpak install -y me.kozec.syncthingtk
flatpak install -y org.keepassxc.KeePassXC
flatpak install -y org.nickvision.tubeconverter
flatpak install -y org.qbittorrent.qBittorrent
flatpak install -y org.signal.Signal
