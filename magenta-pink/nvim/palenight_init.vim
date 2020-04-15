set nocompatible              " be iMproved, required
filetype off                  " required

call plug#begin('/home/mmsh/.config/nvim/plugged')

Plug 'VundleVim/Vundle.vim'
Plug 'scrooloose/nerdtree'
Plug 'dense-analysis/ale'
"Plug 'numirias/semshi',{'do': ':UpdateRemotePlugins'} " Python highlight
Plug 'sheerun/vim-polyglot'
Plug 'luochen1990/rainbow' " Brackets highlight
Plug 'drewtempelmeyer/palenight.vim' " Main highlight
Plug 'vim-airline/vim-airline' " Status bar
Plug 'jeffkreeftmeijer/vim-numbertoggle'

call plug#end()            " required
filetype plugin indent on    " required

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

set list " Display unprintable characters f12 - switches
set listchars=tab:•\ ,trail:•,extends:»,precedes:« " Unprintable chars mapping

" }}} UI Config

let g:rainbow_active = 1

set background=dark
colorscheme palenight
let g:palenight_terminal_italics=1
let g:lightline = { 'colorscheme': 'palenight' }
let g:airline_theme = "palenight"

let g:airline_powerline_fonts = 1
let g:airline#extensions#keymap#enabled = 0
let g:airline_section_z = "\ue0a1:%l/%L Col:%c"
let g:Powerline_symbols='unicode'
let g:airline#extensions#xkblayout#enabled = 0

syntax enable

"in my i3 it creates ugly border in bottom and right sides
"maybe it works better in bspwm
set termguicolors
