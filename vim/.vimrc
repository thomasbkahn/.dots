syntax on
set relativenumber
set showcmd
set number
set nocompatible
set hidden
set hls
colorscheme tk
filetype indent plugin on
set updatetime=300
set tabstop=2
set expandtab
set shiftwidth=2
set softtabstop=2

set foldmethod=indent   "fold based on indent
set foldnestmax=10      "deepest fold is 10 levels
set nofoldenable        "dont fold by default
set foldlevel=1         "this is just what i use

"set rtp+=/usr/local/lib/python3.5/dist-packages/powerline/bindings/vim/
set laststatus=2
set t_Co=256
set showtabline=2
set noshowmode
autocmd InsertEnter * :set relativenumber!
autocmd InsertLeave * :set relativenumber

" -----------------------------------------------------------------------------
" -                                                                           -
" -                                 Plugins                                   -
" -                                                                           -
" -----------------------------------------------------------------------------
call plug#begin('~/.vim/plugged')
Plug 'airblade/vim-gitgutter'
Plug 'valloric/youcompleteme'
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'scrooloose/syntastic'
Plug 'python-mode/python-mode'
Plug 'sirver/ultisnips'
Plug 'tpope/vim-commentary'
Plug 'JuliaEditorSupport/julia-vim'
call plug#end()


" -----------------------------------------------------------------------------
" -                                                                           -
" -                             YouCompleteMe                                 -
" -                                                                           -
" -----------------------------------------------------------------------------
let g:ycm_autoclose_preview_window_after_completion=1


" python-mode
let g:pymode_lint = 0
let g:pymode_lint_on_write = 0
let g:pymode_syntax_space_errors = 0

" syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 0
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wg = 0
let g:syntastic_enable_highlighting = 0
let g:synstastic_python_checkers = ["pylint"]

python3 from powerline.vim import setup as powerline_setup
python3 powerline_setup()
python3 del powerline_setup
