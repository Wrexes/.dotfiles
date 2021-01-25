" Automatically install plug if it's not there
" Install CoC plugins at next launch if user has nvim
if empty(glob('~/.vim/autoload/plug.vim'))
    silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
        \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    autocmd VimEnter *
        \ PlugInstall --sync | UpdateRemotePlugins | bd
            \ | if has('nvim')
            \ |   CocInstall -sync
                \ coc-marketplace
                \ coc-utils
                \ coc-actions
                \ coc-pairs
                \ coc-tabnine
                \ coc-git
                \ coc-sh
                \ coc-fish
                \ coc-json
                \ coc-python
                \ | bd
            \ | endif
            \ | source $MYVIMRC
endif

" Automatically install missing plugins on startup
autocmd VimEnter *
    \  if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
    \|   PlugInstall --sync | q
    \| endif

" Start plugin list-querry
call plug#begin('$HOME/.vim/plugged')

Plug 'Yohannfra/Nvim-Switch-Buffer'
Plug 'aperezdc/vim-template'
Plug 'brooth/far.vim'
Plug 'majutsushi/tagbar'
Plug 'nanotech/jellybeans.vim'
Plug 'rhysd/vim-clang-format'
Plug 'scrooloose/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'vim-scripts/Gummybears'
Plug 'idanarye/vim-vebugger'
Plug 'SirVer/ultisnips'
if has ('nvim')
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    Plug 'preservim/nerdcommenter'
else
    Plug 'ycm-core/YouCompleteMe', {'do': './install.py --all --clangd-completer'}
    Plug 'Shougo/vimproc.vim', {'do' : 'make'}
    Plug 'jiangmiao/auto-pairs'
    Plug 'Yohannfra/Vim-Goto-Header'
endif

" End plugin list
call plug#end()
