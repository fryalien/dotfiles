#!/bin/bash

# Add flathub repo.
flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo

fi="flatpak install flathub -y"

#$fi me.kozec.syncthingtk
#$fi nz.mega.MEGAsync
#$fi org.freefilesync.FreeFileSync
#$fi org.kde.kdenlive
#$fi org.wireshark.Wireshark
#$fi uk.org.greenend.chiark.sgtatham.putty
$fi com.bilingify.readest
$fi com.brave.Browser
$fi com.calibre_ebook.calibre
$fi com.discordapp.Discord
$fi com.github.debauchee.barrier
$fi com.github.johnfactotum.Foliate
$fi com.github.tchx84.Flatseal
$fi com.obsproject.Studio
$fi com.rustdesk.RustDesk
$fi com.vivaldi.Vivaldi
$fi com.vscodium.codium
$fi eu.betterbird.Betterbird
$fi flathub org.gnome.Showtime
$fi io.freetubeapp.FreeTube
$fi io.github.ellie_commons.cherrypick #Color picker
$fi io.github.flattool.Warehouse
$fi io.github.giantpinkrobots.varia
$fi io.github.shiftey.Desktop #GitHub Desktop
$fi io.github.ungoogled_software.ungoogled_chromium
$fi io.mpv.Mpv
$fi md.obsidian.Obsidian
$fi no.mifi.losslesscut
$fi org.dupot.easyflatpak
$fi org.flameshot.Flameshot
$fi org.geany.Geany
$fi org.gnome.Lollypop
$fi org.gnome.meld
$fi org.kde.filelight
$fi org.kde.kwrite
$fi org.kde.tokodon
$fi org.keepassxc.KeePassXC
$fi org.localsend.localsend_app
$fi org.nickvision.tubeconverter #Parabolic
$fi org.onlyoffice.desktopeditors
$fi org.qbittorrent.qBittorrent
$fi org.signal.Signal
$fi org.telegram.desktop
$fi org.tenacityaudio.Tenacity
$fi org.upscayl.Upscayl
$fi org.videolan.VLC
$fi com.github.tenderowl.frog

# When KDE is not installed.
#$fi org.kde.dolphin
#$fi org.kde.kwrite
#$fi org.kde.KStyle.Kvantum
