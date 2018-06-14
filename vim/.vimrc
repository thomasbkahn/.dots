syntax on
set relativenumber
set showcmd
set number
set hidden
set hls
colo slate
filetype indent plugin on
set updatetime=100
set tabstop=8
set expandtab
set shiftwidth=4
set softtabstop=4

set foldmethod=indent   "fold based on indent
set foldnestmax=10      "deepest fold is 10 levels
set nofoldenable        "dont fold by default
set foldlevel=1         "this is just what i use

python3 from powerline.vim import setup as powerline_setup
python3 powerline_setup()
python3 del powerline_setup
"set rtp+=/usr/local/lib/python3.5/dist-packages/powerline/bindings/vim/
set laststatus=2
"set t_Co=256
set showtabline=2
set noshowmode
autocmd InsertEnter * :set relativenumber!
autocmd InsertLeave * :set relativenumber

call plug#begin('~/.vim/plugged')
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'airblade/vim-gitgutter'
