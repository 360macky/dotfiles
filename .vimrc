set rtp+=~/.vim/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

" NERDTree
Plugin 'preservim/nerdtree'

" Theme
Plugin 'dracula/vim', { 'name': 'dracula' }

" Other plugins
Plugin 'jiangmiao/auto-pairs'

" IDE
Plugin 'editorconfig/editorconfig-vim'
Plugin 'mhinz/vim-signify'
Plugin 'yggdroot/indentline'

call vundle#end()
filetype plugin indent on

syntax on
set number 
set relativenumber
set encoding=utf-8
set termguicolors
colorscheme dracula
let g:auto_save = 1
