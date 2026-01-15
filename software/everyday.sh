#!/bin/bash

# ARCH
pkmgr="pacman -S --noconfirm --needed"
# FEDORA
#pkmgr="dnf -y"
# UBUNTU/DEBIAN
#pkmgr="apt install -y"

sudo $pkmgr bat
sudo $pkmgr btop
sudo $pkmgr eza
sudo $pkmgr fastfetch
#sudo $pkmgr fd-find
sudo $pkmgr fd
sudo $pkmgr ffmpeg
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
sudo $pkmgr yt-dlp

### freefilesync ###
#https://freefilesync.org/download.php

### MEGASYNC ###
#kubuntu
#wget https://mega.nz/linux/repo/xUbuntu_24.10/amd64/megasync-xUbuntu_24.10_amd64.deb && sudo apt install "$PWD/megasync-xUbuntu_24.10_amd64.deb"
