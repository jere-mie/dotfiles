" located in ~/.vimrc

set tabstop=4                   " number of visual spaces per TAB
set softtabstop=4               " number of spaces in tab when editing
set shiftwidth=4                " number of spaces to use for autoindent
set autoindent                  " auto indent
set copyindent                  " copy indent from the previous line
" set expandtab                 " tabs are spaces. I don't really love this so I have it
                                                " commented out

set number                              " line numbers

syntax on                               " syntax highlighting on
set ignorecase
set smartcase
set incsearch                   " incremental search

set whichwrap+=<,>,h,l,[,]      " allows for using h, l, and arrow keys to line wrap


" plugins go here
" Install plugins with ":PlugInstall" after adding them here
call plug#begin('~/.vim/plugged')

Plug 'junegunn/vim-easy-align'


" Initialize plugin system
call plug#end()


" command to install vim plug
" curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

" command for neovim
" sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
