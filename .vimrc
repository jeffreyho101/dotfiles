set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

call vundle#end()
filetype plugin indent on

" set colorschemes
let g:airline_theme='dark'

" air-line
let g:airline_powerline_fonts = 1


if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

" old vim-powerline symbols
let g:airline_left_sep = '⮀'
let g:airline_left_alt_sep = '⮁'
let g:airline_right_sep = '⮂'
let g:airline_right_alt_sep = '⮃'
let g:airline_symbols.branch = '⭠'
let g:airline_symbols.readonly = '⭤'
let g:airline_symbols.linenr = '⭡'


set t_Co=256 "256 color
set encoding=utf-8 "UTF-8 character encoding
set tabstop=2  "2 space tabs
set shiftwidth=2  "2 space shift
set softtabstop=2  "Tab spaces in no hard tab mode
set expandtab  " Expand tabs into spaces
set autoindent  "autoindent on new lines
set showmatch  "Highlight matching braces
set ruler  "Show bottom ruler
set equalalways  "Split windows equal size
set formatoptions=croq  "Enable comment line auto formatting
set wildignore+=*.o,*.obj,*.class,*.swp,*.pyc "Ignore junk files
set title  "Set window title to file
set hlsearch  "Highlight on search
set ignorecase  "Search ignoring case
set smartcase  "Search using smartcase
set incsearch  "Start searching immediately
set scrolloff=5  "Never scroll off
set wildmode=longest,list  "Better unix-like tab completion
set cursorline  "Highlight current line
set clipboard=unnamed  "Copy and paste from system clipboard
set lazyredraw  "Don't redraw while running macros (faster)
set nocompatible  "Kill vi-compatibility
set wrap  "Visually wrap lines
set linebreak  "Only wrap on 'good' characters for wrapping
set backspace=indent,eol,start  "Better backspacing
set linebreak  "Intelligently wrap long files
set ttyfast  "Speed up vim
set nostartofline "Vertical movement preserves horizontal position
set number
set mouse=a
set colorcolumn=80
set whichwrap+=<,>,h,l,[,] "Automatically wrap left and right arrows

" Strip whitespace from end of lines when writing file
autocmd BufWritePre * :%s/\s\+$//e

" Syntax highlighting and stuff
filetype plugin indent on
syntax on

colorscheme slate
" Get rid of warning on save/exit typo
command WQ wq
command Wq wq
command W w
command Q q

au BufNewFile,BufRead *.c1 set filetype=c0
set guifont=Consolas:h10
