set background=dark
syntax on
inoremap jk <ESC>
let mapleader = " "
set encoding=utf-8
set clipboard=unnamedplus
colorscheme desert
set tabstop=8 softtabstop=0 expandtab shiftwidth=4 smarttab
filetype plugin indent on
set encoding=utf-8
set number
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

set smarttab
set cindent

au BufNewFile,BufRead *.py, *.c, *.swift
    \ set tabstop=4|
    \ set softtabstop=4|
    \ set shiftwidth=4|
    \ set textwidth=79|
    \ set expandtab|
    \ set autoindent|
    \ set fileformat=unix

" NerdTree

nnoremap <silent> <F9> :NERDTree<CR>

autocmd  BufRead,BufNewFile  *.stencil set filetype=HTML
map! ,% {%   %}<ESC>4ha
map! ,{ {{   }}<ESC>4ha
map! ,h1 <H1></H1><ESC>2ba
map! ,h2 <H2></H2><ESC>2ba
map! ,h3 <H3></H3><ESC>2ba
map! ,p  <p></p><ESC>2ba


let g:netrw_banner = 0

map! ,% {%   %}<ESC>4ha
map! ,{ {{   }}<ESC>4ha
map! ,h1 <H1></H1><ESC>2ba
map! ,h2 <H2></H2><ESC>2ba
map! ,h3 <H3></H3><ESC>2ba
map! ,p  <p></p><ESC>2ba


let g:netrw_banner = 0

au BufRead,BufNewFile *.stencil set filetype=html

let g:haskell_enable_quantification = 1   " to enable highlighting of `forall`
let g:haskell_enable_recursivedo = 1      " to enable highlighting of `mdo` and `rec`
let g:haskell_enable_arrowsyntax = 1      " to enable highlighting of `proc`
let g:haskell_enable_pattern_synonyms = 1 " to enable highlighting of `pattern`
let g:haskell_enable_typeroles = 1        " to enable highlighting of type roles
let g:haskell_enable_static_pointers = 1  " to enable highlighting of `static`
let g:haskell_backpack = 1                " to enable highlighting of backpack keywords

call plug#begin()
  " Plugin Section
Plug 'elmcast/elm-vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
let g:coc_global_extensions = ['coc-emmet', 'coc-css', 'coc-html', 'coc-json', 'coc-prettier', 'coc-tsserver']
call plug#end()
"Config Section
