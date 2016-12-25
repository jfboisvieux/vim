colorscheme wombat256mod
syntax on 

set encoding=utf-8
"colorscheme desert
"set tabstop=8 softtabstop=0 expandtab shiftwidth=4 smarttab
filetype plugin indent on
inoremap jk <ESC>
let mapleader = "\<Space>"
set encoding=utf-8
set number 

execute pathogen#infect()
"split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
" 
" enable folding
set foldmethod=indent
set foldlevel=99

" Enable folding with the spacebar
nnoremap <space> za

au BufNewFile,BufRead *.py, *.c, *.swift
    \ set tabstop=4|
    \ set softtabstop=4|
    \ set shiftwidth=4|
    \ set textwidth=79|
    \ set expandtab|
    \ set autoindent|
    \ set fileformat=unix

au BufNewFile,BufRead *.js, *.html, *.css
    \ set tabstop=2|
    \ set softtabstop=2|
    \ set shiftwidth=2|

" NerdTree

nnoremap <silent> <F9> :NERDTree<CR>



