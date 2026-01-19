#!/bin/bash

# REMOVE FROM EOS

sudo pacman -Rns --noconfirm firefox
sudo pacman -Rns --noconfirm firewalld
sudo pacman -Rns --noconfirm meld

in="sudo pacman -S --noconfirm --needed"

# INSTALL PACKAGES
$in bat
$in btop
$in dos2unix
$in eza
$in fastfetch
$in fd
$in ffmpeg
$in filelight
$in fish
$in flatpak
$in fzf
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
$in partitionmanager
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
$in zoxide

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

# Add flathub remote.
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
