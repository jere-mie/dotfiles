" this makes neovim use my existing .vimrc and .vim runtime path
" this file must be located in ~/.config/nvim/init.vim

set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath=&runtimepath
source ~/.vimrc