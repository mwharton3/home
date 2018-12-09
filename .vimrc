"" Enable pathogen
execute pathogen#infect()
syntax on
filetype plugin indent on

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

"" Fully vim, not vi
set nocompatible

"" Syntastic options
let g:syntastic_aggregate_errors = 1
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0
let g:syntastic_swift_checkers = ['swift','swiftlint']

" General configs
set nolist
set tabstop=4
set shiftwidth=4
set expandtab


"" Reload .vimrc on write
autocmd! bufwritepost .vimrc source %
autocmd Filetype gitcommit setlocal spell textwidth=72 colorcolumn=80
autocmd Filetype COMMIT_EDITMSG setlocal spell textwidth=72 colorcolumn=80

" waf scripts are Python files
autocmd BufEnter wscript :set ft=python

" C++ indenting
autocmd FileType c,cc,cpp :set cindent
highlight RedundantSpaces ctermbg=red
match RedundantSpaces /\s\+$\|\t\|\t\+$/

filetype indent plugin on

" Make the status line more informative
set statusline=%t       "tail of the filename
set statusline+=[%{strlen(&fenc)?&fenc:'none'}, "file encoding
set statusline+=%{&ff}] "file format
set statusline+=%h      "help file flag
set statusline+=%m      "modified flag
set statusline+=%r      "read only flag
set statusline+=%y      "filetype
set statusline+=%=      "left/right separator
set statusline+=%c,     "cursor column
set statusline+=%l/%L   "cursor line/total lines
set statusline+=\ %P    "percent through file

set laststatus=2

" Next buffer
noremap <C-L> :bnext<cr>

" Previous buffer
noremap <C-H> :bprevious<cr>

" Turn off search highlights
noremap <space> :noh<cr>

" Go to next error
noremap <C-N> :cnext<cr>

" Jump to line and column on '
nnoremap ' `
nnoremap ` '

" Set the leader
let mapleader = ","

" Better matching
runtime macros/matchit.vim

