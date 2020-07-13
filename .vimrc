set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" " alternatively, pass a path where Vundle should install plugins
" "call vundle#begin('~/some/path/here')
"
" " let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'Valloric/YouCompleteMe'
Plugin 'scrooloose/nerdtree'
Plugin 'morhetz/gruvbox'
Plugin 'kien/ctrlp.vim' 
Plugin 'mileszs/ack.vim'
Plugin 'itchyny/lightline.vim'
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate'
Plugin 'dense-analysis/ale'
Plugin 'tpope/vim-commentary'
Plugin 'terryma/vim-expand-region'
Plugin 'michaeljsmith/vim-indent-object'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'maxbrunsfeld/vim-yankstack'
Plugin 'junegunn/goyo.vim'
Bundle 'mattn/webapi-vim'
Bundle 'mattn/vim-gist'

"" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
" "filetype plugin on
" "
" " Brief help
" " :PluginList       - lists configured plugins
" " :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" " :PluginSearch foo - searches for foo; append `!` to refresh local cache
" " :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
" "
" " see :h vundle for more details or wiki for FAQ
" " Put your non-Plugin stuff after this line
" "
" "
" "
:command RunPy !/mnt/c/Python3.7/python.exe '%:p'

set mouse=a
set number
set relativenumber
set background=dark
" Makes movement between splits easier
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l
" Makes nice closing braces
inoremap " ""<left>
inoremap ' ''<left>
inoremap ( ()<left>
inoremap [ []<left>
inoremap { {}<left>
inoremap {<CR> {<CR>}<ESC>O
inoremap {;<CR> {<CR>};<ESC>O
" Set tab size
:set tabstop=4
:set shiftwidth=4
:set expandtab
syntax on
"gruvbox color scheme config
let g:gruvbox_contrast_dark = 'hard'
" Open nerdtree on vim startup
autocmd vimenter * NERDTree
" Set to right side position
let g:NERDTreeWinPos = "right"
" Unfocus nerdtree
autocmd vimenter * wincmd p 
:colorscheme gruvbox
highlight ColorColumn ctermbg=DarkGray guibg=lightgray
set colorcolumn=80

