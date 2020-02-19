let mapleader = " "
set encoding=UTF-8
set nocompatible		" be iMproved, required
filetype plugin on		" required
:set nu
:imap jj <Esc>
:set mouse=a			" mouse scroll in normal/visualmode 

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'jiangmiao/auto-pairs'
Plugin 'pangloss/vim-javascript'
Plugin 'maxmellon/vim-jsx-pretty'
Plugin 'sheerun/vim-polyglot'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'dense-analysis/ale'
Plugin 'tiagofumo/vim-nerdtree-syntax-highlight'
Plugin 'preservim/nerdcommenter'
Plugin 'junegunn/fzf.vim'
Plugin 'tpope/vim-surround'
Plugin 'easymotion/vim-easymotion'
Plugin 'mileszs/ack.vim'
Plugin 'junegunn/limelight.vim'
Plugin 'nathanaelkane/vim-indent-guides'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}

Plugin 'preservim/nerdtree'
" The NERDTree is a file system explorer for the Vim editor

Plugin 'ryanoasis/vim-devicons'
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

syntax on

" related to NERDTree
map ) :NERDTreeToggle<CR>
" either this or the next line, chose whatever you feel like
map <leader>) :NERDTreeFind<cr>
map <C-o> :NERDTreeToggle %<CR>

" related to fzf :Files command
map ( :Files<CR>

" related to Silver searcher
map <C-p> :Ag<CR>

" Related to tab movement
nnoremap < gT
nnoremap > gt

set rtp+=/usr/local/opt/fzf

" Related to vimdevicons, nerd font 
set guifont=OceanicMaterial:h11
let g:webdevicons_enable = 1
let g:WebDevIconsOS = 'Darwin'
let g:airline_powerline_fonts = 1

" Related to vim-nerdtree-syntax-highlight
let NERDTreeHighlightCursorline = 0

"Related to code folding
set foldmethod=syntax
set foldcolumn=1
let javaScript_fold=1
set foldlevelstart=99

" Related to Linting and Formatting
let g:ale_fixers = { 'javascript': ['eslint'] }
let g:ale_set_highlights = 1
let g:ale_javascript_eslint_use_global = 1

" related to indent-guides
colorscheme default
set ts=4 sw=4 et
let g:indent_guides_start_level = 2
let g:indent_guides_guide_size = 1
let g:indent_guides_auto_colors = 0
hi IndentGuidesOdd  guibg=red   ctermbg=3
hi IndentGuidesEven guibg=green ctermbg=4
