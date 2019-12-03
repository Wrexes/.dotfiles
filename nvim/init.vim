set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath = &runtimepath

let g:ruby_host_prog = system("whereis neovim-ruby-host | cut -d: -f2 | xargs |tr -d '\n'")

source ~/.vimrc
source ~/.vim/cocsettings.vim
