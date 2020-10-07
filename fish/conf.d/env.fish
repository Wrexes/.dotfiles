function addenv --description "Add/Edit an environment variable"
    set -l key $argv[1]
    set -l val $argv[2]

    if ! set -q $key
        set -Ux $key $val
    else if [ "$$key" != "$val" ]
        set -e $key
        and addenv $key $val
    end
end

function setconf --description "Set a config file for NAME shortcut as \$conf_NAME"
    set -l key "conf_$argv[1]"
    set -l val $argv[2]

    if [ -f "$val" -o -L "$val" ]
        addenv $key $argv[2]
    else
        echo "[setconf]: Invalid file ($argv[2])" >&2 && return 1
    end
end

function setcdir --description "Set a config directory for NAME as \$cdir_NAME"
    set -l key "cdir_$argv[1]"
    set -l val $argv[2]

    if [ -d "$val" -o -L "$val" ]
        addenv $key $argv[2]
    else
        echo "[setcdir]: Invalid directory ($argv[2])" >&2 && return 1
    end
end

########################################
##         MAIN CONFIG DIRS           ##
########################################
addenv XDG_USER_CONFIG_DIR $HOME/.config
addenv CFGDIR $XDG_USER_CONFIG_DIR
addenv DOTDIR $HOME/.dotfiles

########################################
##          ENV SETTINGS              ##
########################################
# Locale
addenv LANG en_GB.UTF-8

# Default editor
addenv EDITOR (which nvim)

# Default terminal emulator
addenv TERMINAL kitty

# Web browser
# addenv BROWSER vivaldi-stable

# Silly greeting
addenv fish_greeting "Today is a good day to code avec le cul !"

# Bat theme
addenv BAT_THEME "Sublime Snazzy"

# Use bat as main man pager
addenv MANPAGER "sh -c 'col -bx | bat -l man -p'"

# Academic year
addenv ACADEMIC_YEAR 2019

# Delivery directory
addenv deliv $HOME/repos/delivery

# Libs directory
addenv libs $HOME/repos/libs

# Libfox directory
addenv lfox $libs/libfox

# Modular makefile repo location
addenv mkrepo $deliv/makefiles

# Global gitignore
addenv tekgi $DOTDIR/tekgi

########################################
##         CONFIG SETTINGS            ##
########################################

# Clang-Format
setconf format $HOME/.clang-format

# Dunst
setcdir dunst $CFGDIR/dunst
setconf dunst $cdir_dunst/dunstrc

# Fish shell
setcdir fish $CFGDIR/fish
setconf fish $cdir_fish/config.fish

# GDB Dashboard
setcdir gdb $HOME/.gdbinit.d
setconf gdb $HOME/.gdbinit

# Rofi (app launcher)
setcdir rofi $CFGDIR/rofi
#setconf rofi $cdir_rofi/config.rasi

# N/Vim
setcdir nvim $CFGDIR/nvim
setcdir vim  $HOME/.vim
setconf vim  $HOME/.vimrc
setconf plug $cdir_vim/plugsettings.vim

# Xorg
# setcdir X $DOTDIR/X11

# Yet Another Yogurt
setcdir yay $CFGDIR/yay
setconf yay $cdir_yay/config.json

# i3 Window Manager
setcdir i3 $CFGDIR/i3
setconf i3 $cdir_i3/config

# Starship prompt
setconf starship $CFGDIR/starship.toml
