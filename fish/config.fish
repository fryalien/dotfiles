if status is-interactive
    # Commands to run in interactive sessions can go here
end

set fish_greeting ""

function fish_prompt
    set_color -o 2B5BB7 # Set foreground color to blue
    echo -n '┌─╴'

    if test "$USER" = "root"
        set_color -o C80A12 # Set foreground color to red for root user
    else
        set_color -o blue # Set foreground color to blue for regular user
    end


    echo -n '('(date +%R)')'

    set_color -o 2B5BB7
    echo -n '-['

    set_color -o white # Set foreground color to white(directory)
    echo -n (pwd)

    set_color -o 2B5BB7
    echo -n ']'

    set_color -o 2B5BB7
    echo '' # Newline in Fish shell

    echo -n '└╴'
    if test "$USER" = "root"
        set_color -o C80A12 # Set foreground color to red for root user
	echo -n '#'
    else
        set_color -o 2B5BB7 # Set foreground color to blue for regular user
	echo -n '❯'
    end

    set_color normal # Reset color

    echo -n ' '
end

#function fish_prompt
#    echo " ~ "
#end

set fish_color_valid_path

#function fish_prompt
#    echo (prompt_pwd) "❯ "
#echo (set_color -o 00d3b8)"➜" (set_color -o 3daee9)(prompt_pwd)(set_color -o yellow) "✗ "
#end

#-------------------------
# ALIASES
#-------------------------

# INSTALL PACKAGES WITH ARCH
abbr u 'sudo pacman -Syu'
abbr i 'sudo pacman -S'
abbr pkr 'sudo pacman -Rs'
abbr pks 'sudo pacman -Ss'
abbr yi 'yay -S'
abbr pi 'paru -S'
abbr upall 'yay -Syu'
abbr up 'paru -Syu --noconfirm; flatpak update -y'

# INSTALL PACKAGES WITH FLATPAK
abbr f 'flatpak install'
abbr fu 'flatpak update'
abbr fr 'flatpak remove'
abbr fs 'flatpak search'
abbr fcl 'flatpak uninstall --unused'
abbr fls 'flatpak list --app --columns=application'


# CLI COMMANDS
alias l 'eza -lh --group-directories-first'
alias la 'eza -lha --group-directories-first'
abbr t 'btop'
abbr ri 'rg -i'
abbr s 'sudo'
abbr ff 'fastfetch'
abbr efils 'efibootmgr'
abbr efidel 'sudo efibootmgr --delete-bootnum --bootnum 000x'
abbr d 'du -sh *'
abbr sfi 'source ~/.config/fish/config.fish'
abbr c 'clear'

# INSTALLED
abbr pla 'pacman -Qe > ~/Downloads/pacman-all-list.md'
abbr fl 'flatpak list > ~/Downloads/flatpak-list.md'

# SHORCUTS FOR PROGRAMS
abbr v 'nvim'
abbr V 'sudo nvim'
abbr e 'micro'

# PLACES
abbr dw 'cd ~/Downloads'
abbr dc 'cd ~/Documents'
abbr pc 'cd ~/Pictures'
abbr vd 'cd ~/Videos'
abbr pu 'cd ~/Public'

# POWER
abbr sd 'shutdown now'
abbr re 'reboot'

abbr x 'startx'

# RESOLUTION
abbr 4k 'xrandr -s 3840x2160'
abbr hd 'xrandr -s 1920x1080'

# SOURCE CONFIG FILES
abbr fis 'source ~/.config/fish/config.fish'
abbr zshs 'source ~/.zshrc'
abbr bas ' source ~/.bashrc'

# YOUTUBE DOWNLOAD
abbr yab 'cd ~/Downloads/; yt-dlp -x --audio-format mp3 -f bestaudio '
abbr ya 'cd ~/Downloads/; yt-dlp --extract-audio --audio-format mp3 --audio-quality 0 '
abbr yv 'cd ~/Downloads/; yt-dlp '

#git stuff
abbr gc 'git clone'
abbr g-dots 'git clone https://github.com/fryalien/dotfiles'
abbr g-notes 'git clone https://github.com/fryalien/notes'

# PACMAN clean packages
abbr pkcl 'sudo paccache -r'

# LOCKED PACMAN DATABASE
# check if something is holding the lock
abbr lck 'lsof /var/lib/pacman/db.lck'
# remove lock
abbr rl 'rm /var/lib/pacman/db.lck'

# FZF settings
fzf --fish | source

export FZF_DEFAULT_OPTS="--preview 'bat --color=always --style=numbers {}' --bind shift-up:preview-page-up,shift-down:preview-page-down"
export FZF_DEFAULT_COMMAND="fd --type f"
export FZF_CTRL_T_OPTS="--preview='less {}' --height=100% --bind shift-up:preview-page-up,shift-down:preview-page-down"
export FZF_COMPLETION_DIR_COMMANDS="cd pushd rmdir tree"

# ZOXIDE settings
zoxide init fish | source

# MICRO EDITOR THEME
export "MICRO_TRUECOLOR=1"
