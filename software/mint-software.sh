#!/bin/bash

# ARCH
#in="sudo pacman -S --noconfirm --needed"
# FEDORA
#in="sudo dnf install -y"
# UBUNTU
in="sudo apt install -y"

$in fish
$in fzf
$in zoxide

$in bat
$in btop
$in eza
$in neofetch
$in fd-find
$in ffmpeg
$in git
$in gparted
$in imagemagick
$in kbackup
$in micro
$in ncdu
$in neovim
$in ripgrep
$in tldr
$in tmux
$in ttf-mscorefonts-installer
$in yt-dlp

$in wireshark
sudo usermod -a -G wireshark y

### freefilesync
#https://freefilesync.org/download.php

### MEGASYNC
#Linux Mint 22
#wget https://mega.nz/linux/repo/xUbuntu_24.04/amd64/megasync-xUbuntu_24.04_amd64.deb && sudo apt install "$PWD/megasync-xUbuntu_24.04_amd64.deb"
