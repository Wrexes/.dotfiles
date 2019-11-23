#! /bin/sh
#
# install.sh
# Copyright (C) 2019 renard <renard@voyager>
#
# Distributed under terms of the MIT license.
#


CWD=$(pwd)

git submodule update --init --recursive

cd $HOME
    && ln -s $CWD/clang-format/.clang-format .
    && ln -s $CWD/.vimrc .vimrc
    && ln -s $CWD/.gitconfig .
    && ln -s $CWD/gdb-dashboard/.gdbinit .
    && ln -s $CWD/gdbinit.d/ .

mkdir -p "$HOME/.config" "HOME/.local"
cd $HOME/.config
    && ln -s $CWD/mimeapps.list .
    && ln -s $CWD/mimeinfo.cache .
    && ln -s $CWD/starship.toml .
    && ln -s $CWD/yay .
    && ln -s $CWD/i3 .
    && ln -s $CWD/fish .
    && ln -s $CWD/rofi .
    && ln -s $CWD/omf .
    && ln -s $CWD/kitty .
    && ln -s $CWD/gdb .
