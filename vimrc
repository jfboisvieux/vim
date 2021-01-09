set background=dark
syntax on
inoremap jk <ESC>
nnoremap <C-p> :<C-u>FZF<CR>
" -----------
" CoC settings
"
" CoC use <cr> to confirm completion 
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm() : "\<C-g>u\<CR>"
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm() : "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"
" CoC use <Tab> for triggr completion
" use <tab> for trigger completion and navigate to the next complete item
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~ '\s'
endfunction

inoremap <silent><expr> <Tab>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<Tab>" :
      \ coc#refresh()
" 
let mapleader = " "
"set encoding=utf-8
set clipboard=unnamedplus
colorscheme desert
"set tabstop=8 softtabstop=0 expandtab shiftwidth=4 smarttab
filetype plugin indent on
"set encoding=utf-8
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

set expandtab
set ts=8
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

let g:rehash256 = 1
let g:netrw_banner = 0

au BufRead,BufNewFile *.stencil set filetype=html

let g:haskell_enable_quantification = 1   " to enable highlighting of `forall`
let g:haskell_enable_recursivedo = 1      " to enable highlighting of `mdo` and `rec`
let g:haskell_enable_arrowsyntax = 1      " to enable highlighting of `proc`
let g:haskell_enable_pattern_synonyms = 1 " to enable highlighting of `pattern`
let g:haskell_enable_typeroles = 1        " to enable highlighting of type roles
let g:haskell_enable_static_pointers = 1  " to enable highlighting of `static`
let g:haskell_backpack = 1                " to enable highlighting of backpack keywords

"Config Section
"Highlighting bad whitespace for haskell
syn cluster hsRegions add=hsImport,hsLineComment,hsBlockComment,hsPragma
syn cluster hsRegions add=cPreCondit,cCppOut,cCppOut2,cCppSkip
syn cluster hsRegions add=cIncluded,cDefine,cPreProc,cComment,cCppString

syn match tab display "\t" containedin=@hsRegions
hi link tab Error
syn match trailingWhite display "[[:space:]]\+$" containedin=@hsRegions
hi link trailingWhite Error

