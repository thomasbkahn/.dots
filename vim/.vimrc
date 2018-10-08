syntax on
set relativenumber
set showcmd
set number
set nocompatible
set hidden
set hls
"colorscheme tk
filetype indent plugin on
set updatetime=300
set tabstop=2
set expandtab
set shiftwidth=2
set softtabstop=2
set colorcolumn=100

set foldmethod=indent   "fold based on indent
set foldnestmax=10      "deepest fold is 10 levels
set nofoldenable        "dont fold by default
set foldlevel=1         "this is just what i use

set laststatus=2
set t_Co=256
set showtabline=2
"set noshowmode
autocmd InsertEnter * :set relativenumber!
autocmd InsertLeave * :set relativenumber
