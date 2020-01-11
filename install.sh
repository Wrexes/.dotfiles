#! /bin/sh
#
# install.sh
# Copyright (C) 2019 renard <renard@voyager>
#
# Distributed under terms of the MIT license.
#


CWD=$(pwd)

git submodule update --init --recursive

ln -s $CWD/.gdbinit.d/                  $HOME/
ln -s $CWD/.gitconfig                   $HOME/
ln -s $CWD/.vim*                        $HOME/
ln -s $CWD/clang-format/.clang-format   $HOME/
ln -s $CWD/gdb-dashboard/.gdbinit       $HOME/

mkdir -p "$HOME/.config" "$HOME/.local"
ln -s $CWD/TabNine          $HOME/.config/
ln -s $CWD/fish             $HOME/.config/
ln -s $CWD/i3               $HOME/.config/
ln -s $CWD/kitty            $HOME/.config/
ln -s $CWD/mimeapps.list    $HOME/.config/
ln -s $CWD/mimeinfo.cache   $HOME/.config/
ln -s $CWD/omf              $HOME/.config/
ln -s $CWD/rofi             $HOME/.config/
ln -s $CWD/starship.toml    $HOME/.config/
ln -s $CWD/yay              $HOME/.config/
