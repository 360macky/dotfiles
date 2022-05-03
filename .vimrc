set rtp+=~/.vim/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

" Autocomplete
Plugin 'neoclide/coc.nvim', { 'branch' : 'release'} " Still learning how to use...

" NERDTree
Plugin 'preservim/nerdtree'

" Theme
Plugin 'arcticicestudio/nord-vim'

" Other plugins
Plugin 'jiangmiao/auto-pairs'

" Git
Plugin 'vim-airline/vim-airline'

" IDE
Plugin 'editorconfig/editorconfig-vim'
Plugin 'yggdroot/indentline'
Plugin '907th/vim-auto-save'

call vundle#end()
filetype plugin indent on

" Rememeber open NeoVim an run :PlugInstall after this

syntax on
set number 
set relativenumber
set encoding=utf-8
set termguicolors
let g:auto_save = 1
colorscheme nord

" Enable mouse support
set mouse=a

" Search Settings
set ignorecase
set smartcase

" Shortcuts
nmap <C-b> :NERDTreeToggle<CR>
nmap <C-q> :q<CR>

" Use Enter (<cr>) to select the first autocomplete suggestion
inoremap <silent><expr> <CR> pumvisible() ? coc#_select_confirm() : "\<C-g>u\<CR>"
