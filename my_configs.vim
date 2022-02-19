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
set number
let asmsyntax="masm"

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

" plugins go here
" Install plugins with ":PlugInstall" after adding them here

call plug#begin('~/.vim/plugged')

" Plug 'junegunn/vim-easy-align'
Plug 'neoclide/coc.nvim', {'branch': 'release'}

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