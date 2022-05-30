" Vim Custom Marcelo SetUp <3

" Vundle Plugins
" > {Title} - {Description (optional)} - {Notes (optional)}
" TODO: Check if <set rtp+=~/.vim/Vundle.vim> works
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

" Autocomplete engine
Plugin 'neoclide/coc.nvim', { 'branch' : 'release'}
" Remember use :CocInstall coc-snippets after installing Coc

" NERDTree - Directory Sidebar Tree
Plugin 'preservim/nerdtree'

" NERDTree - Git support for NERDTree
Plugin 'Xuyuanp/nerdtree-git-plugin'

" Theme - Color Scheme of my editor
Plugin 'arcticicestudio/nord-vim'

" Git - Git Wrapper for Vim
Plugin 'tpope/vim-fugitive'

" Vim GitGutter - Shows git diff markers in the sign column
Plugin 'airblade/vim-gitgutter'

" Signify - Show a diff using Vim its sign column
Plugin 'mhinz/vim-signify'

" Vim StatusBar
Plugin 'vim-airline/vim-airline'

" Vim-Startify - Start page and Vim session management
Plugin 'mhinz/vim-startify'

" Vim Calendar
Plugin 'itchyny/calendar.vim'

" IDE Plugins - General and pretty small plugins to understand
Plugin 'editorconfig/editorconfig-vim'
Plugin 'yggdroot/indentline'
Plugin 'kyazdani42/nvim-web-devicons'
Plugin 'vim-syntastic/syntastic'
Plugin 'jiangmiao/auto-pairs'

Plugin 'farmergreg/vim-lastplace'

" AutoSave - Automatic save when press <ESC>
Plugin '907th/vim-auto-save'

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
Plugin 'ycm-core/YouCompleteMe'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'

" Vim-JavaScript - Provides syntax highlighting and improved indentation
Plugin 'pangloss/vim-javascript'

" React Snippets
Plugin 'mlaursen/vim-react-snippets'

" Vim-CloseTag - Automatically close <tags></tags>.
Plugin 'alvan/vim-closetag'

" Focus mode
Plugin 'junegunn/goyo.vim'

" Vim-G - Internet Search from Vim
Plugin 'szw/vim-g'

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
colorscheme nord

" COC
" :CocInstall tsserver
let g:coc_global_extensions = [
\ 'coc-tsserver'
\ ]

" Set AutoSave using <ESC> key
let g:auto_save = 1

" Enable mouse support
set mouse=a

" Search Settings
set ignorecase
set smartcase

" Open NERDtree in the right side replacing the file
set splitright

" Show hidden files (starting with dot in NERDtree)
let NERDTreeShowHidden=1

" Tab Configuration
set tabstop=4
set shiftwidth=2
set expandtab

" Custom leader Key is ;
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

" Shortcuts
nmap <C-b> :NERDTreeToggle<CR>
nmap <C-q> :q<CR>
nmap <leader>zen :Goyo<CR>
nmap <leader>cal :Calendar<CR>
nmap <leader>clo :Calendar -view=clock<CR>
nmap <leader>x :x<CR>
nmap <C-f> :Neoformat<CR>
nmap <leader>g :G 

" Enable J and K keys.
noremap J j
noremap K k

" Telescope Shortcuts
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

" Enclosing <tags> for HTML and React Components
let g:closetag_filenames = '*.html,*.xhtml,*.phtml,*.js'

" Syntastic Recommended Settings
" Source: https://github.com/vim-syntastic/syntastic#3-recommended-settings
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" Syntastic Configuration
" Source: https://remarkablemark.org/blog/2016/09/28/vim-syntastic-eslint/#option-2
let g:syntastic_javascript_checkers=['eslint']
let g:syntastic_python_checkers = ['pylint']

" Signify Symbols
let g:signify_sign_add               = '+'
let g:signify_sign_delete            = '-'
let g:signify_sign_change            = '*'
let g:signify_sign_delete_first_line = '-'

" Startify Header
let g:startify_custom_header = [
\ '    _    _      _ _         __  __                    _       _ ',
\ '   | |  | |    | | |       |  \/  |                  | |     | |',
\ '   | |__| | ___| | | ___   | \  / | __ _ _ __ ___ ___| | ___ | |',
\ '   |  __  |/ _ \ | |/ _ \  | |\/| |/ _\`|  __/ __/ _ \ |/ _ \| |',
\ '   | |  | |  __/ | | (_) | | |  | | (_| | | | (_|  __/ | (_) |_|',
\ '   |_|  |_|\___|_|_|\___/  |_|  |_|\__,_|_|  \___\___|_|\___/(_)',
\ ]

" Search Engine - Using :G to search on DuckDuckGo
let g:vim_g_command = "G"
let g:vim_g_query_url = "https://duckduckgo.com/?q="

" Vim-JavaScript - Enables syntax highlighting for JSDocs
let g:javascript_plugin_jsdoc = 1

" Tool tip documentation and diagnostics
nnoremap <leader>h :call CocAction('doHover')<CR>

" Shortcut for Go to Definition
nnoremap <leader>gd <Plug>(coc-definition)

" Shortcut for Code Actions
nnoremap <leader>do <Plug>(coc-codeaction)

" Shortcut for Rename variables
nnoremap <leader>rn <Plug>(coc-rename)

" Shortcut for References
nmap <leader>gr <Plug>(coc-references)

" let g:UltiSnipsSnippetDirectories = ['~/.vim/UltiSnips', 'UltiSnips']
let g:UltiSnipsSnippetDirectories=[$HOME.'/.vim/UltiSnips']
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"
let g:UltiSnipsEditSplit="vertical"
