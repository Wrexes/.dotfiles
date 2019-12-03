" Automatically install plug if it's not there
if empty(glob('$HOME/.local/share/nvim/site/autoload/plug.vim'))
  silent !curl -fLo '$HOME/.local/share/nvim/site/autoload/plug.vim' --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Start plugin list
call plug#begin('$HOME/.vim/plugged')

Plug 'Yohannfra/Vim-Goto-Header'
Plug 'aperezdc/vim-template'
Plug 'brooth/far.vim'
Plug 'jiangmiao/auto-pairs'
Plug 'nanotech/jellybeans.vim'
if has ('nvim')
    Plug 'neoclide/coc.nvim', {'do': 'yarn install --frozen-lockfile'}
else
    Plug 'ycm-core/YouCompleteMe', {'do': './install.py --all --clangd-completer'}
endif
Plug 'rhysd/vim-clang-format'
Plug 'scrooloose/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'vim-scripts/Gummybears'

" End plugin list
call plug#end()

" Automatically install missing plugins on startup
autocmd VimEnter *
  \  if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \|   PlugInstall --sync | q
  \| endif

