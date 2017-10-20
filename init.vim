set nocompatible

filetype plugin indent on
" show existing tab with 4 spaces width
set tabstop=2
" when indenting with '>', use 4 spaces width
set shiftwidth=2
" On pressing tab, insert 4 spaces
set expandtab

set backspace=indent,eol,start
syntax on
filetype off
set number
set hidden

call plug#begin()

Plug 'scrooloose/nerdtree'
Plug 'kien/ctrlp.vim'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'artur-shaik/vim-javacomplete2'
Plug 'brooth/far.vim'
" For func argument completion
Plug 'Shougo/neosnippet'
Plug 'Shougo/neosnippet-snippets'
Plug 'Shougo/neco-syntax'

call plug#end()

" deoplete

let g:deoplete#enable_at_startup = 1

" neosnippet
        
let g:neosnippet#enable_completed_snippet = 1
