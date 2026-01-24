#!/bin/bash

in="pacman -S --noconfirm --needed"

$in fish
$in fzf
$in zoxide

$in bat
$in btop
$in eza
$in fastfetch
$in ffmpeg
$in gparted
$in imagemagick
$in micro
$in ncdu
$in ripgrep
$in tldr
$in tmux
$in wireshark
$in yt-dlp

yay -S --noconfirm --needed freefilesync-bin

flatpak install -y com.brave.Browser
flatpak install -y io.mpv.Mpv
flatpak install -y org.localsend.localsend_app
flatpak install -y org.onlyoffice.desktopeditors
flatpak install -y org.qbittorrent.qBittorrent
flatpak install -y org.videolan.VLC
