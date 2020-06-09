set runtimepath+=~/.vim_runtime

source ~/.vim_runtime/vimrcs/basic.vim
source ~/.vim_runtime/vimrcs/filetypes.vim
source ~/.vim_runtime/vimrcs/plugins_config.vim
source ~/.vim_runtime/vimrcs/extended.vim

try
source ~/.vim_runtime/my_configs.vim
catch
endtry
:command RunPy !/mnt/c/Python3.7/python.exe '%:p'
set mouse=a
set number
set relativenumber
set background=dark
syntax on
let g:gruvbox_contrast_dark='hard'
:colorscheme gruvbox
highlight ColorColumn ctermbg=DarkGray guibg=lightgray
set colorcolumn=80

