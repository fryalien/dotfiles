#!/bin/bash

# INSTALL PACKAGES
sudo pacman -S --noconfirm --needed dos2unix
sudo pacman -S --noconfirm --needed eza
sudo pacman -S --noconfirm --needed fastfetch
sudo pacman -S --noconfirm --needed filelight
sudo pacman -S --noconfirm --needed fish
sudo pacman -S --noconfirm --needed fzf
sudo pacman -S --noconfirm --needed gparted
sudo pacman -S --noconfirm --needed gzip
sudo pacman -S --noconfirm --needed imagemagick
sudo pacman -S --noconfirm --needed kbackup
sudo pacman -S --noconfirm --needed kcalc
sudo pacman -S --noconfirm --needed micro
sudo pacman -S --noconfirm --needed p7zip
sudo pacman -S --noconfirm --needed partitionmanager
sudo pacman -S --noconfirm --needed rate-mirrors
sudo pacman -S --noconfirm --needed ripgrep
sudo pacman -S --noconfirm --needed rsync
sudo pacman -S --noconfirm --needed ufw gufw
sudo pacman -S --noconfirm --needed unace
sudo pacman -S --noconfirm --needed unrar
sudo pacman -S --noconfirm --needed unzip
sudo pacman -S --noconfirm --needed wireshark-qt
sudo pacman -S --noconfirm --needed yt-dlp

# EXTRA
sudo pacman -S --noconfirm --needed freefilesync

# AUR
paru -S --noconfirm --needed megasync-bin
