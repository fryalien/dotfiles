#!/bin/bash

pkmgr="pacman -S --noconfirm --needed"

# ARCO "pacman -S --noconfirm --needed"
# FEDORA "dnf -y"
# KUBUNTU "apt install -y"

sudo $pkmgr fastfetch
sudo $pkmgr wireshark
sudo $pkmgr kbackup
sudo $pkmgr kwrite
sudo $pkmgr gparted
sudo $pkmgr imagemagick
sudo $pkmgr micro
sudo $pkmgr fish
sudo $pkmgr fzf
sudo $pkmgr bat
sudo $pkmgr eza
sudo $pkmgr ripgrep
sudo $pkmgr yt-dlp
#sudo $pkmgr fd-find
#on arch fd
sudo $pkmgr fd

flatpak install -y com.github.tchx84.Flatseal
flatpak install -y org.onlyoffice.desktopeditors
flatpak install -y md.obsidian.Obsidian
flatpak install -y org.videolan.VLC
flatpak install -y com.spotify.Client
flatpak install -y com.obsproject.Studio
flatpak install -y org.kde.kdenlive
flatpak install -y io.freetubeapp.FreeTube
flatpak install -y app.zen_browser.zen
flatpak install -y com.brave.Browser
flatpak install -y io.github.ungoogled_software.ungoogled_chromium
flatpak install -y io.gitlab.librewolf-community
flatpak install -y com.vivaldi.Vivaldi
flatpak install -y org.qbittorrent.qBittorrent
flatpak install -y org.nickvision.tubeconverter
flatpak install -y org.signal.Signal
flatpak install -y org.keepassxc.KeePassXC
flatpak install -y com.calibre_ebook.calibre
flatpak install -y org.kde.tokodon
flatpak install -y org.gnome.meld
flatpak install -y org.localsend.localsend_app
flatpak install -y io.github.flattool.Warehouse
flatpak install -y org.dupot.easyflatpak
flatpak install -y org.geany.Geany
flatpak install -y io.github.shiftey.Desktop
flatpak install -y io.github.giantpinkrobots.varia
flatpak install -y com.nextcloud.desktopclient.nextcloud


### freefilesync ###
#https://freefilesync.org/download.php

### MEGASYNC ###
#kubuntu
#wget https://mega.nz/linux/repo/xUbuntu_24.10/amd64/megasync-xUbuntu_24.10_amd64.deb && sudo apt install "$PWD/megasync-xUbuntu_24.10_amd64.deb"

#arco
sudo pacman -S --noconfirm --needed megasync-bin
