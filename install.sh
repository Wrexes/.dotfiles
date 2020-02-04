#! /bin/sh
#
# install.sh
# Copyright (C) 2019 renard <renard@voyager>
#
# Distributed under terms of the MIT license.
#


CWD=$(pwd)

git submodule update --init --recursive

ln -sf $CWD/.gdbinit.d/                  $HOME/
ln -sf $CWD/.gitconfig                   $HOME/
ln -sf $CWD/.vim*                        $HOME/
ln -sf $CWD/clang-format/.clang-format   $HOME/
ln -sf $CWD/gdb-dashboard/.gdbinit       $HOME/

mkdir -p "$HOME/.config" "$HOME/.local"
ln -sf $CWD/TabNine          $HOME/.config/
ln -sf $CWD/dunst            $HOME/.config/
ln -sf $CWD/fish             $HOME/.config/
ln -sf $CWD/i3               $HOME/.config/
ln -sf $CWD/kitty            $HOME/.config/
ln -sf $CWD/mimeapps.list    $HOME/.config/
ln -sf $CWD/mimeinfo.cache   $HOME/.config/
ln -sf $CWD/omf              $HOME/.config/
ln -sf $CWD/rofi             $HOME/.config/
ln -sf $CWD/starship.toml    $HOME/.config/
ln -sf $CWD/yay              $HOME/.config/

LYCFGD="/etc/ly/"
mkdir -p $LYCFGD && ln -s $CWD/ly/config.ini $LYCFGD/
