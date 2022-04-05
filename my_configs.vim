" This is using 'The Ultimate vimrc' as a base
" this file is located in ~/.vim_runtime/my_configs.vim
" install instructions:
" git clone --depth=1 https://github.com/amix/vimrc.git ~/.vim_runtime
" sh ~/.vim_runtime/install_awesome_vimrc.sh

" command to install vim plug
" curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
" command for vim plug on neovim
" sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

" misc
set tabstop=4                   " number of visual spaces per TAB
set softtabstop=4               " number of spaces in tab when editing
set shiftwidth=4                " number of spaces to use for autoindent
set autoindent                  " auto indent
set copyindent                  " copy indent from the previous line
set expandtab                 " tabs are spaces. I don't really love this so I have it commented out
syntax on                       " syntax highlighting on
set ignorecase
set smartcase
set incsearch                   " incremental search
set whichwrap+=<,>,h,l,[,]      " allows for using h, l, and arrow keys to line wrap
set backspace=indent,eol,start  " fixes issues with backspace not working
set number                      " line numbers
let asmsyntax="masm"
set mouse=a
set ttymouse=sgr
set splitbelow
set scrolloff=4

set whichwrap+=<,>,h,l,[,]      " allows for using h, l, and arrow keys to line wrap
set backspace=indent,eol,start  " fixes issues with backspace not working

" this fixes issues with CTRL-arrow keys in tmux and screen
if &term == "screen"
    set term=xterm
endif

" maps for tabs
" NOTE: <leader> is the comma key: ','
map <leader>tt :tabn " go to next tab
map <leader>tr :tabp " go to previous tab

map <c-t> :term<CR>

" NERDTree
let g:NERDTreeWinPos = "left"
map <c-b> :NERDTreeToggle<CR>

map <c-p> :CtrlP<CR>

" shift+arrow selection
nmap <S-Up> v<Up>
nmap <S-Down> v<Down>
nmap <S-Left> v<Left>
nmap <S-Right> v<Right>
vmap <S-Up> <Up>
vmap <S-Down> <Down>
vmap <S-Left> <Left>
vmap <S-Right> <Right>
imap <S-Up> <Esc>v<Up>
imap <S-Down> <Esc>v<Down>
imap <S-Left> <Esc>v<Left>
imap <S-Right> <Esc>v<Right>

" copy-paste
vmap <C-c> y<Esc>i
vmap <C-x> d<Esc>i
map <C-v> pi
map <C-g> pi
imap <C-v> <Esc>pi
imap <C-g> <Esc>pi
imap <C-z> <Esc>ui

" plugins go here
" Install plugins with ":PlugInstall" after adding them here

call plug#begin('~/.vim/plugged')

" Plug 'junegunn/vim-easy-align'
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" CtrlP fuzzy file finder
Plug 'https://github.com/ctrlpvim/ctrlp.vim'

" Initialize plugin system
call plug#end()

" this sets the cursor to look like a line in insert mode
let &t_SI = "\e[6 q"
let &t_EI = "\e[2 q"

" coc language servers to be automatically installed
let g:coc_global_extensions = [
            \ 'coc-json',
            \ 'coc-clangd',
            \ 'coc-pyright',
            \ 'coc-snippets',
            \ 'coc-ultisnips',
            \ 'coc-java',
            \ 'coc-tsserver',
            \ 'coc-texlab',
            \ ]