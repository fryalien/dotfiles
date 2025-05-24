#!/bin/bash

# ARCO
#pkmgr="pacman -S --noconfirm --needed"
# FEDORA
#pkmgr="dnf -y"
# KUBUNTU
pkmgr="apt install -y"

sudo $pkmgr bat
sudo $pkmgr btop
sudo $pkmgr eza
sudo $pkmgr fastfetch
sudo $pkmgr fd-find
sudo $pkmgr ffmpeg
sudo $pkmgr filelight
sudo $pkmgr fish
sudo $pkmgr fzf
sudo $pkmgr git
sudo $pkmgr gparted
sudo $pkmgr imagemagick
sudo $pkmgr kbackup
sudo $pkmgr micro
sudo $pkmgr mpv
sudo $pkmgr neovim
sudo $pkmgr ripgrep
sudo $pkmgr tldr
sudo $pkmgr tmux
sudo $pkmgr wireshark
sudo $pkmgr yt-dlp


#flatpak install -y app.zen_browser.zen
#flatpak install -y com.calibre_ebook.calibre
#flatpak install -y io.gitlab.librewolf-community
#flatpak install -y org.geany.Geany
#flatpak install -y org.kde.kdenlive
flatpak install -y com.brave.Browser
flatpak install -y com.github.tchx84.Flatseal
flatpak install -y com.nextcloud.desktopclient.nextcloud
flatpak install -y com.obsproject.Studio
flatpak install -y com.spotify.Client
flatpak install -y com.vivaldi.Vivaldi
flatpak install -y io.freetubeapp.FreeTube
flatpak install -y io.github.flattool.Warehouse
flatpak install -y io.github.giantpinkrobots.varia
flatpak install -y io.github.shiftey.Desktop
flatpak install -y md.obsidian.Obsidian
flatpak install -y org.dupot.easyflatpak
flatpak install -y org.gnome.meld
flatpak install -y org.kde.kwrite
flatpak install -y org.kde.tokodon
flatpak install -y org.keepassxc.KeePassXC
flatpak install -y org.localsend.localsend_app
flatpak install -y org.nickvision.tubeconverter
flatpak install -y org.onlyoffice.desktopeditors
flatpak install -y org.qbittorrent.qBittorrent
flatpak install -y org.signal.Signal
flatpak install -y org.videolan.VLC


### freefilesync
#https://freefilesync.org/download.php

### MEGASYNC
#Linux Mint
#wget https://mega.nz/linux/repo/xUbuntu_24.04/amd64/megasync-xUbuntu_24.04_amd64.deb && sudo apt install "$PWD/megasync-xUbuntu_24.04_amd64.deb"
