#!/bin/bash

pkmgr="pacman -S --noconfirm --needed"

sudo $pkmgr bat
sudo $pkmgr btop
sudo $pkmgr eza
sudo $pkmgr fastfetch
sudo $pkmgr ffmpeg
sudo $pkmgr fish
sudo $pkmgr gparted
sudo $pkmgr imagemagick
sudo $pkmgr micro
sudo $pkmgr ncdu
sudo $pkmgr ripgrep
sudo $pkmgr tldr
sudo $pkmgr tmux
sudo $pkmgr wireshark
sudo $pkmgr yt-dlp

paru -S --noconfirm --needed freefilesync-bin

flatpak install -y com.brave.Browser
flatpak install -y com.vivaldi.Vivaldi
flatpak install -y io.mpv.Mpv
flatpak install -y org.localsend.localsend_app
flatpak install -y org.onlyoffice.desktopeditors
flatpak install -y org.qbittorrent.qBittorrent
flatpak install -y org.videolan.VLC
