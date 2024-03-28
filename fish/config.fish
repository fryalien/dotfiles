if status is-interactive
    # Commands to run in interactive sessions can go here
end

set fish_greeting ""

#function fish_prompt
#    echo " ~ "
#end

set fish_color_valid_path

function fish_prompt
#    echo (prompt_pwd) "> "
echo (set_color -o 00d3b8)"➜ " (set_color -o 3daee9)(prompt_pwd)(set_color -o yellow) "✗ "
end

# ALIASES
# INSTALL PACKAGES
abbr u 'sudo dnf update'
abbr i 'sudo dnf install'
abbr pkr 'sudo dnf remove'
abbr pks 'sudo dnf search'
abbr f 'flatpak install'
abbr fu 'flatpak update'
abbr fr 'flatpak remove'
abbr fs 'flatpak search'
abbr fcl 'flatpak uninstall --unused'
abbr fls 'flatpak list'

# CLI COMMANDS
alias l 'exa -lh --group-directories-first'
alias la 'exa -lha --group-directories-first'
abbr t 'btop'
abbr ri 'rg -i'
abbr s 'sudo'
abbr d 'du -sh *'
abbr sfi 'source ~/.config/fish/config.fish'
abbr no 'cd ~/MEGA/UTILS/NOTES/; micro'

# INSTALLED
abbr dla 'sudo dnf list > ~/Downloads/dnf-all-list.md'
abbr fl 'flatpak list > ~/Downloads/flatpak-list.md'
abbr dl 'dnf repoquery --userinstalled > ~/Downloads/dnf-list.md'
abbr dh 'dnf history > ~/Downloads/dnf-history-list.md'

# SHORCUTI ZA PROGRAME
abbr v 'nvim'
abbr V 'sudo nvim'
abbr r 'ranger'
abbr e 'micro'

# PLACES
abbr dw 'cd ~/Downloads'
abbr dc 'cd ~/Documents'
abbr pc 'cd ~/Pictures'
abbr vd 'cd ~/Videos'
abbr me 'cd ~/MEGA'
abbr con 'cd ~/MEGA/UTILS/CONFIG'
abbr mu 'cd ~/MEGA/UTILS'
abbr ko 'cd ~/MEGA/FILES/NJUSKALO/KNJIGE-ORMARI'
abbr ol 'cd ~/MEGA/UTILS/OBSIDIAN-LINUX'

# POWER
abbr sd 'shutdown now'
abbr re 'reboot'

# RESOLUTION
abbr 4k 'xrandr -s 3840x2160'
abbr hd 'xrandr -s 1920x1080'

# MELD
abbr fic 'meld ~/.config/fish/config.fish ~/MEGA/UTILS/CONFIG/fish/config.fish &; disown'
abbr i3c 'meld ~/.config/i3/config ~/MEGA/UTILS/CONFIG/i3/config &; disown'
abbr i3s 'meld ~/.config/i3/i3status.conf ~/MEGA/UTILS/CONFIG/i3/i3status.conf &; disown'

# YOUTUBE DOWNLOAD
abbr yab 'cd ~/Downloads/; yt-dlp -x --audio-format mp3 -f bestaudio '
abbr ya 'cd ~/Downloads/; yt-dlp --extract-audio --audio-format mp3 --audio-quality 0 '
abbr yv 'cd ~/Downloads/; yt-dlp '

# PYTHON3 SERVER
abbr py 'python3 -m http.server -b '
abbr ip 'hostname -I'
abbr web '~/.local/bin/httpserv.sh'


# FIREWALL
abbr fwstop 'systemctl stop firewalld'
abbr fwstart 'systemctl start firewalld'
