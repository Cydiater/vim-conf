"{{{ Vundle Configuration
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'sheerun/vim-polyglot'
Plugin 'chriskempson/base16-vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

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

" }}}

"{{{ Plugin Configuration

" Airline
let g:airline_powerline_fonts = 1
let g:airline#extensions#whitespace#enabled = 0
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#tab_nr_type = 1 " splits and tab number

"}}}

" basic settings {{{
" set menu language to English as default
set langmenu=en_US
let $LANG = 'en_US'
source $VIMRUNTIME/delmenu.vim
source $VIMRUNTIME/menu.vim

set fileencodings=utf-8,ucs-bom,gb18030,gbk,gb2312,cp936
set foldmethod=marker
set termencoding=utf-8
set encoding=utf-8
set nocompatible
set hlsearch incsearch
set cursorline
set showcmd
set laststatus=2
set tabstop=4
set softtabstop=4
set shiftwidth=4
set ruler
set autoread
set autoindent
set relativenumber
set termguicolors
set showmode
set showmatch
set matchtime=0
set noerrorbells
set nowrap
set guifont=DroidSansMonoForPowerlinePlusNerdFileTypesMono
set wildmode=full
set errorfile=.err
syntax on

colorscheme base16-tomorrow-night

" }}}

" map setting {{{

let mapleader = ","
let maplocalleader = ","
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>
nnoremap H h20
nnoremap L l20
inoremap jk <esc>
inoremap <esc> <nop>
noremap <Left> <nop>
noremap <Right> <nop>
noremap <Up> <nop>
noremap <Down> <nop>
noremap <Del> <nop>
noremap <BS> <nop>
" system clipboard shorthand
nnoremap cy "+y
nnoremap cp "+p

" source vimrc
nnoremap <leader>sv :source ~/.vimrc<cr>

" clear all of the content
nnoremap <leader>ca o<esc>ggdG<cr>

" formatting the content
nnoremap <leader>fo mmgg=G`m<cr>

" clear the ^M in vim
nnoremap <leader>cm :%s/\r$//<cr>

" control the sizeof windows
nnoremap <leader>l :vertical resize -10<cr>
nnoremap <leader>r :vertical resize +10<cr>
nnoremap <leader>d :resize +7<cr>
nnoremap <leader>u :resize -7<cr>

nnoremap <leader>cv i{<cr><esc>o}<esc>k
inoremap <c-p> <esc>A<space>{}<esc>i<cr><esc>O

:nmap <leader>ta :tab tag <c-r><c-w><cr>

" }}}

"	command settings {{{

function! s:CompileCpp(filename, fileprefix, def)

	if a:def ==# ''
		let b:cmd = "g++ -g ". a:filename . " -o " . a:fileprefix . " -Wall -Wextra -std=c++11 -Dcydiater_io -O2"
	else 
		let b:cmd = "g++ -g ". a:filename . " -o " . a:fileprefix . " -Wall -Wextra -std=c++11 -Dcydiater_io -O2 -Dcydiater_" . a:def
	endif

	echom "Compiling " . b:cmd
	cexpr system(b:cmd)
	echom "Done"

endfunction

command -nargs=0 S :source ~/.vim/sessions/default.vim
command -nargs=+ Re :0r ~/.vim/template/<args>

command -nargs=* Co :call <SID>CompileCpp(expand('%'), expand('%<'), expand('<args>'))
command -nargs=0 Ru :!time ./%<

command -nargs=* Go :call <SID>CompileCpp(expand('%'), expand('%<'), expand('<args>')) | sleep 1 | !time ./%<

augroup abbrev_javascript

	autocmd!
	autocmd filetype javascript :iabbrev <buffer> _us 'use strict';<cr>

augroup end

augroup abbrev_cpp

	autocmd!
	autocmd filetype cpp :iabbrev <buffer> debugger #ifdef cydiater_debug<cr>#endif

augroup end

" }}}
