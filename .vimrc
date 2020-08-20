" vi compatibility off
set nocompatible

filetype off

" Vundle runtime path
set rtp+=~/.vim/bundle/Vundle.vim,~/.vim,~/.vim/after,/usr/share/vim/vimfiles,/usr/share/vim/vimfiles/after

call vundle#begin()
" PLUGINS
" Vundleception
Plugin 'Vundle/Vundle.vim'

" Airline
Plugin 'vim-airline/vim-airline'

" Airline Themes
Plugin 'vim-airline/vim-airline-themes'
let g:airline_powerline_fonts = 1
let g:airline_theme='dark'

" NERDTree
Plugin 'scrooloose/nerdtree'
" Automatically open NERDTree when vim starts up
autocmd vimenter * NERDTree
" Switch between different windows by their direction`
no <C-j> <C-w>j|
no <C-k> <C-w>k|
no <C-l> <C-w>l|
no <C-h> <C-w>h|
"Close vim if only one window is left open
autocmd BufEnter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" Elixir
Plugin 'elixir-lang/vim-elixir'

" Vim-Tmux Navigator
Plugin 'christoomey/vim-tmux-navigator'

" Fugitive
Plugin 'tpope/vim-fugitive'

" Auto Pairs
Plugin 'jiangmiao/auto-pairs'

" Surround.Vim
Plugin 'tpope/vim-surround'

" Indent Guides
Plugin 'nathanaelkane/vim-indent-guides'
let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_start_level = 2
let g:indent_guides_guide_size = 2
let g:indent_guides_auto_colors = 0
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=red   ctermbg=3
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=green ctermbg=4

" Rainbow Parenthesis
Plugin 'kien/rainbow_parentheses.vim'
let g:rbpt_colorpairs = [
						\ ['brown',       'RoyalBlue3'],
						\ ['Darkblue',    'SeaGreen3'],
						\ ['darkgray',    'DarkOrchid3'],
						\ ['darkgreen',   'firebrick3'],
						\ ['darkcyan',    'RoyalBlue3'],
						\ ['darkred',     'SeaGreen3'],
						\ ['darkmagenta', 'DarkOrchid3'],
						\ ['brown',       'firebrick3'],
						\ ['gray',        'RoyalBlue3'],
						\ ['black',       'SeaGreen3'],
						\ ['darkmagenta', 'DarkOrchid3'],
						\ ['Darkblue',    'firebrick3'],
						\ ['darkgreen',   'RoyalBlue3'],
						\ ['darkcyan',    'SeaGreen3'],
						\ ['darkred',     'DarkOrchid3'],
						\ ['red',         'firebrick3'],
						\ ]
let g:rbpt_max = 16
let g:rbpt_loadcmd_toggle = 0
" Always on
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces

" C
Plugin 'c.vim'

" YouCompleteMe
Plugin 'valloric/youcompleteme'

" Emmet
Plugin 'mattn/emmet-vim'

" Projectionist
Plugin 'tpope/vim-projectionist'

" Phoenix
Plugin 'avdgaag/vim-phoenix'

" UltiSnips
Plugin 'sirver/ultisnips'

" Commentary
Plugin 'tpope/vim-commentary' 
autocmd FileType elixir setlocal commentstring=#\ %s

" The NERD Commenter
Plugin 'scrooloose/nerdcommenter'

" Easy Motion
Plugin 'easymotion/vim-easymotion'

" Vimwiki
Plugin 'vimwiki/vimwiki'
" Headers
hi link VimwikiHeader1 level6c
hi link VimwikiHeader2 level5c
hi link VimwikiHeader3 level2c

" End of Vundle
call vundle#end()

filetype plugin indent on

" latex
set grepprg=grep\ -nH\ $*
let g:tex_flavor = "latex"

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
