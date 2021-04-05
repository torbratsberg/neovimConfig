runtime! partials/plugins.vim
runtime! partials/mappings.vim
runtime! partials/abbrevations.vim
runtime! partials/appearance.vim
runtime! partials/statusline.vim

runtime! telescope.vim

filetype plugin indent on
autocmd FileType scss setl iskeyword+=@-@
highlight Comment cterm=italic
set colorcolumn=80
set guioptions=
set showtabline=0
set autoread
set history=400
set updatetime=200
set foldmethod=marker
set hidden
set path+=**
set wildmenu
set wildignore+=**/node_modules/**,*.o,*.pyc,**/venv/**
set nowrap
set tabstop=4
set shiftwidth=4
set expandtab
set autoindent
set smartindent
set smarttab
set encoding=UTF-8
set nohlsearch
set incsearch
set smartcase
set ignorecase
set noshowcmd
set scrolloff=8
set shortmess+=c
set signcolumn=yes
set lazyredraw
set nobackup
set nowritebackup
set noswapfile
set splitright
set splitbelow
set showmatch
set completeopt=longest,menuone,noinsert
set langmap=æø;{}


let g:netrw_banner=0
let g:netrw_liststyle=3
let g:netrw_winsize=13
let g:netrw_altv=1

let mapleader=" "
let leader=" "
