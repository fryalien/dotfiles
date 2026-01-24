#!/bin/bash

# REMOVE FROM EOS
rem="sudo pacman -Rns --noconfirm"

$rem firefox
$rem firewalld
$rem meld

# INSTALL APPS
in="sudo pacman -S --noconfirm --needed"

$in fish
$in fzf
$in zoxide

$in bat
$in btop
$in dos2unix
$in eza
$in fastfetch
$in fd
$in ffmpeg
$in flatpak
$in git
$in gparted
$in gzip
$in imagemagick
$in kbackup
$in kcalc
$in micro
$in ncdu
$in neovim
$in p7zip
$in partitionmanager #KDE partition manager
$in rate-mirrors
$in ripgrep
$in rsync
$in tldr
$in tmux
$in ufw gufw
$in unace
$in unrar
$in unzip
$in wireshark-qt
$in yt-dlp

# AUR
aur="yay -S --noconfirm --needed"

$aur megasync-bin
$aur freefilesync-bin
$aur ttf-ms-fonts
$aur catppuccin-cursors-latte
$aur catppuccin-cursors-frappe
$aur catppuccin-cursors-macchiato
$aur catppuccin-cursors-mocha
$aur paru
