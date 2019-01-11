" vi compatibility off
set nocompatible

" show file stats
set ruler

" file title
set title

" line numbers
set number

" auto indent
set autoindent

" syntax processing
" syntax enable
syntax on
" syntax=sh

" number of visual spaces per TAB
set tabstop=4

" number of spaces in tab when editing
set softtabstop=4

" tabs are spaces
" set expandtab

" show command in bottom bar
set showcmd

" highlight current line
set cursorline

" load filetype-specific indent files
filetype indent plugin on

" visual autocomplete for command menu
set wildmenu

" highlight matching [{()}]
set showmatch

" search as characters are entered
set incsearch

" highlight matches
set hlsearch

" enable mouse
set mouse=a

" use clipboard as the default register
set clipboard=unnamed

" CtrlP
set runtimepath^=~/.vim/bundle/ctrlp.vim
