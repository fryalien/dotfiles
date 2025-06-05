#!/usr/bin/env bash

# Add flathub remote.
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

# Install flatpaks.
flatpak install -y com.brave.Browser
#flatpak install -y com.calibre_ebook.calibre
#flatpak install -y com.discordapp.Discord
#flatpak install -y com.github.debauchee.barrier
flatpak install -y com.github.tchx84.Flatseal
flatpak install -y com.nextcloud.desktopclient.nextcloud
flatpak install -y com.obsproject.Studio
#flatpak install -y com.rustdesk.RustDesk
flatpak install -y com.spotify.Client
flatpak install -y com.vivaldi.Vivaldi
flatpak install -y com.vscodium.codium
#flatpak install -y io.freetubeapp.FreeTube
flatpak install -y io.github.shiftey.Desktop
#flatpak install -y io.github.ungoogled_software.ungoogled_chromium
flatpak install -y io.gitlab.librewolf-community
flatpak install -y io.mpv.Mpv
flatpak install -y md.obsidian.Obsidian
#flatpak install -y me.kozec.syncthingtk
#flatpak install -y nz.mega.MEGAsync
#flatpak install -y one.ablaze.floorp
flatpak install -y org.freefilesync.FreeFileSync
flatpak install -y org.gnome.Lollypop
flatpak install -y org.gnome.meld
flatpak install -y org.kde.kdenlive
flatpak install -y org.kde.tokodon
flatpak install -y org.keepassxc.KeePassXC
flatpak install -y org.localsend.localsend_app
flatpak install -y org.nickvision.tubeconverter
flatpak install -y org.onlyoffice.desktopeditors
flatpak install -y org.qbittorrent.qBittorrent
flatpak install -y org.signal.Signal
flatpak install -y org.tenacityaudio.Tenacity
flatpak install -y org.videolan.VLC
flatpak install -y org.wireshark.Wireshark
#flatpak install -y uk.org.greenend.chiark.sgtatham.putty
flatpak install -y io.github.flattool.Warehouse
flatpak install -y org.dupot.easyflatpak
flatpak install -y flathub org.gnome.Showtime

# When KDE is not installed.
#flatpak install -y org.kde.dolphin
#flatpak install -y org.kde.kwrite
#flatpak install -y org.kde.KStyle.Kvantum
#flatpak install -y org.flameshot.Flameshot
