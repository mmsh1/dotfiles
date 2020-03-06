set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=/home/shimanov/.config/nvim/bundle/Vundle.vim
call vundle#begin('/home/shimanov/.config/nvim/bundle')
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'Valloric/YouCompleteMe'
Plugin 'dense-analysis/ale'
" Python highligh
Plugin 'numirias/semshi', {'do': ':UpdateRemotePlugins'}
Plugin 'sheerun/vim-polyglot'
" Brackets highlight
Plugin 'luochen1990/rainbow'
" Clang syntax highlight
Plugin 'morhetz/gruvbox' 
Plugin 'drewtempelmeyer/palenight.vim'

call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" <Ctrl-l> redraws the screen and removes any search highlighting.
nnoremap <silent> <C-l> :nohl<CR><C-l>

" Spaces & Tabs {{{
set tabstop=4		" number of visual spaces per TAB
set softtabstop=4	" number of spaces in tab when editing
set shiftwidth=4	" number of spaces to use for autoindent
set expandtab		" tabs are space
set autoindent
set copyindent		 " copy indent from the previous line
" }}} Spaces & Tabs" 

" UI Config {{{
set hidden
set number                   " show line number
set showcmd                  " show command in bottom bar
set cursorline               " highlight current line
set wildmenu                 " visual autocomplete for command menu
set showmatch                " highlight matching brace
set laststatus=2             " window will always have a status line
set nobackup
set noswapfile
" }}} UI Config

let g:gruvbox_italic=1
let g:gruvbox_bold=1
let g:gruvbox_underline=1
let g:gruvbox_undercurl=1
let g:gruvbox_contrast_dark='hard'
let g:palenight_terminal_italics=1

autocmd ColorScheme * highlight Normal ctermbg=NONE

let g:rainbow_active = 1

syntax enable
set t_Co=256
set background=dark
colorscheme gruvbox
