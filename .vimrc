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
Plugin 'kyazdani42/nvim-web-devicons'

" Commenter
Plugin 'preservim/nerdcommenter'

" Telescope Search
Plugin 'nvim-lua/plenary.nvim'
Plugin 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plugin 'nvim-telescope/telescope.nvim'

" Prettier
" Remember run $ npm install -g prettier
Plugin 'sbdchd/neoformat'

" Snippets
" Plugin 'ycm-core/YouCompleteMe'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'

" React Snippets
Plugin 'mlaursen/vim-react-snippets'

call vundle#end()
filetype plugin indent on

" Rememeber open NeoVim an run :PlugInstall after this

syntax on
set number 
set relativenumber
set encoding=utf-8
set wrap
set linebreak
set textwidth=0
set wrapmargin=0
set termguicolors
let g:auto_save = 1
colorscheme nord

" Enable mouse support
set mouse=a

" Search Settings
set ignorecase
set smartcase

" Open NERDtree in the right side replacing the file
set splitright

" Show hidden files (starting with dot in NERDtree)
let NERDTreeShowHidden=1

" Tabs
set tabstop=4
set shiftwidth=2
set expandtab

" Shortcuts
nmap <C-b> :NERDTreeToggle<CR>
nmap <C-q> :q<CR>

" Format using Ctrl+f
nmap <C-f> :Neoformat<CR>

" Leader Shortcuts
let mapleader = ";"

" Use Enter (<cr>) to select the first autocomplete suggestion
inoremap <silent><expr> <CR> pumvisible() ? coc#_select_confirm() : "\<C-g>u\<CR>"

" Copy to clipboard using Y
nnoremap Y "+y<CR>
vnoremap Y "+y<CR>

" Prettier configuration
let g:neoformat_try_node_exe = 1

" Set Vim not create swap files when editing
set noswapfile

" Enable quotation marks
" Source: https://stackoverflow.com/questions/40601818/vim-displays-json-file-without-any-quotes
let g:vim_json_conceal=0
