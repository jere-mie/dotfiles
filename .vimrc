
" misc
set tabstop=4                   " number of visual spaces per TAB
set softtabstop=4               " number of spaces in tab when editing
set shiftwidth=4                " number of spaces to use for autoindent
set autoindent                  " auto indent
set copyindent                  " copy indent from the previous line
set expandtab                   " tabs are spaces
syntax on                       " syntax highlighting on
set ignorecase
set smartcase
set incsearch                   " incremental search
set whichwrap+=<,>,h,l,[,]      " allows for using h, l, and arrow keys to line wrap
set backspace=indent,eol,start  " fixes issues with backspace not working
set number                      " line numbers
let asmsyntax="masm"            " MASM syntax highlighting for .asm files
set mouse=a                     " mouse support everywhere
set ttymouse=sgr                " better mouse support over ssh
set splitbelow                  " new tabs at bottom (such as)
set scrolloff=3                 " always show at least 3 lines when scrolling down
set whichwrap+=<,>,h,l,[,]      " allows for using h, l, and arrow keys to line wrap
set backspace=indent,eol,start  " fixes issues with backspace not working
let fancy_symbols_enabled = 1
set encoding=utf-8
set termguicolors

" this fixes issues with CTRL-arrow keys in tmux and screen
if &term == "screen"
    set term=xterm
endif

" leader
let mapleader=' '
nmap <leader>v :source ~/.vimrc<CR>

" tab settings
" tab navigation mappings
map tt :tabnew 
map <M-Right> :tabn<CR>
imap <M-Right> <ESC>:tabn<CR>
map <M-Left> :tabp<CR>
imap <M-Left> <ESC>:tabp<CR>

" opens terminal
map <c-t> :term<CR>

" NERDTree
let g:NERDTreeWinPos = "left"
map <c-b> :NERDTreeToggle<CR>

" CtrlP opens by ctrl-p
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

" plugins
call plug#begin('~/.vim/plugged')

" code completion
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" CtrlP fuzzy file finder
Plug 'https://github.com/ctrlpvim/ctrlp.vim'

" Nerdtree is nicer file explorer
Plug 'preservim/nerdtree'

" color scheme
Plug 'wadackel/vim-dogrun'

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

" use 256 colors when possible
if has('gui_running') || (&term =~? 'mlterm\|xterm\|xterm-256\|screen-256')
    if !has('gui_running')
        let &t_Co = 256
    endif
    colorscheme dogrun
else
    colorscheme evening 
endif

" nicer colors
highlight DiffAdd           cterm=bold ctermbg=none ctermfg=119
highlight DiffDelete        cterm=bold ctermbg=none ctermfg=167
highlight DiffChange        cterm=bold ctermbg=none ctermfg=227
highlight SignifySignAdd    cterm=bold ctermbg=237  ctermfg=119
highlight SignifySignDelete cterm=bold ctermbg=237  ctermfg=167
highlight SignifySignChange cterm=bold ctermbg=237  ctermfg=227

if (has("termguicolors"))
    set termguicolors
endif
