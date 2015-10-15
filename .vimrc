""""""""""""""""""""""""""_My VIMRC File_""""""""""""""""""""""""""
" Author:        Davi Sena <davis.sena@gmail.com>                  "
" Copyright:     GPLv3                                             "
" Description:   List of VIM configurations                        "
" Creation Date: 09/22/2014                                        "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" 
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""_PATHOGEN CONFIGURATION_""""""""""""""""""""""
filetype off

execute pathogen#infect()
execute pathogen#helptags()

" Load Plugins Configuration File
source ~/.vim/plugins.vim

filetype plugin indent on

set laststatus=2

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" 
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""_GENERAL CONFIGURATION_"""""""""""""""""""""""
syntax on

" I don't like \ as a leader.
let mapleader=","

colorscheme monokai
" No toolbar or Menu (someone use it?)
set guioptions-=T
set guioptions-=m
" No left and right scrollbar
set guioptions-=r
set guioptions-=L

" Make vim searching incredible
set hlsearch incsearch smartcase

" Shows line numbers
set number
" Always shows the ruler (cursor position and etc)
set ruler
" Shows (partial) command in status line
set showcmd
" Show matching brackets.
set showmatch
" Highlight cursor line
set cursorline
" Tells vim to let 4 lines beforescrolling
set scrolloff=4
" Tells vim to break lines that exceeds the 'textwidth'
set wrap linebreak
" Always shows the status line
set laststatus=2
" Eable folding and set it to use the marker
set foldenable foldmethod=marker
" Set hidden buffers
set hidden
" More powerful backspacing
set backspace=2
" Tells VIM that we are using a fast TTY
set ttyfast
" Keep 200 lines of command line history
set history=200
" Suffixes that get lower priority when doing tab completion for filenames.
" These are files we are not likely to want to edit or read.
set suffixes+=.bak,~,.swp,.o,.info,.aux,.log,.dvi,.bbl,.blg,.brf,.cb,.ind,.idx,.ilg,.inx,.out,.toc,.pyc
set wildignore+=*.bak,~*,*.swp,*.o,*.info,*.aux,*.log,*.dvi,*.bbl,*.blg,*.brf,*.cb,*.ind,*.idx,*.ilg,*.inx,*.out,*.toc,*.pyc
" Remove fillchars
set fillchars =
" Don't try to highlight lines longer than 800 characters.
set synmaxcol=800
" Disable backup and swapfile
set nobackup noswapfile
" Fix split positioning
set splitbelow splitright
" Rounds indent to multiple of shiftwidth
set shiftround
" Complet matching text and show list
set wildmode=list:longest
" Disable preview window (faster navigation in completitions)
set completeopt-=preview
" Automatically read a file that has changed on disk
set autoread
" String to put at the start of lines that have been wrapped "
let &showbreak='↪ '
" Enable the list of buffers
let g:airline#extensions#tabline#enabled = 1
" Show just the filename
let g:airline#extensions#tabline#fnamemod = ':t'

set tabstop=4
set softtabstop=4
set shiftwidth=4
set autoindent
set nowrap
""""""""""""""""""""""""""""""""""""""""""""""""""""" 
"""""""""""""""""""""""""""""""""""""""""""""""""""""

"""""""""""""""""""_VIM KEY MAPS_""""""""""""""""""""
nnoremap <C-s> :w<cr>
"Open a new empty buffer
nnoremap <C-t> :enew<cr>
" Switch between last and actual buffer
nnoremap <C-Space> :b#<CR>
" Next buffer
nnoremap <C-right> :bnext<cr>
inoremap <C-right> :bnext<cr>
" Previews buffer
nnoremap <C-left> :bprevious<cr>
inoremap <C-left> :bprevious<cr>
" Use DEL in normal mode to close vim
nnoremap <Del> :q<cr>
" Move , functionality to the old leader "\"
nnoremap \ ,
"""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""                                                                                                                                            


