#!/bin/bash

pkmgr="pacman -S --noconfirm --needed"

# INSTALL PACKAGES
sudo $pkmgr bat
sudo $pkmgr btop
sudo $pkmgr dos2unix
sudo $pkmgr eza
sudo $pkmgr fastfetch
sudo $pkmgr fd
sudo $pkmgr ffmpeg
sudo $pkmgr filelight
sudo $pkmgr fish
sudo $pkmgr fzf
sudo $pkmgr git
sudo $pkmgr gparted
sudo $pkmgr gzip
sudo $pkmgr imagemagick
sudo $pkmgr kbackup
sudo $pkmgr kcalc
sudo $pkmgr micro
sudo $pkmgr ncdu
sudo $pkmgr neovim
sudo $pkmgr p7zip
sudo $pkmgr partitionmanager
sudo $pkmgr rate-mirrors
sudo $pkmgr ripgrep
sudo $pkmgr rsync
sudo $pkmgr tldr
sudo $pkmgr tmux
sudo $pkmgr ufw gufw
sudo $pkmgr unace
sudo $pkmgr unrar
sudo $pkmgr unzip
sudo $pkmgr wireshark-qt
sudo $pkmgr yt-dlp

# AUR
paru -S --noconfirm --needed megasync-bin
paru -S --noconfirm --needed freefilesync-bin
