#!/bin/bash

# ARCH
#pkmgr="pacman -S --noconfirm --needed"
# FEDORA
#pkmgr="dnf install -y"
# UBUNTU
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
sudo $pkmgr neovim
sudo $pkmgr ripgrep
sudo $pkmgr tldr
sudo $pkmgr tmux
sudo $pkmgr wireshark
sudo $pkmgr ttf-mscorefonts-installer
sudo $pkmgr yt-dlp

### freefilesync
#https://freefilesync.org/download.php

### MEGASYNC
#Linux Mint 22
#wget https://mega.nz/linux/repo/xUbuntu_24.04/amd64/megasync-xUbuntu_24.04_amd64.deb && sudo apt install "$PWD/megasync-xUbuntu_24.04_amd64.deb"
