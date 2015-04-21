set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" YouCompleteMe
Plugin 'Valloric/YouCompleteMe'

" NERD commenter
Plugin 'scrooloose/nerdcommenter'

" Colorschemes
Plugin 'flazz/vim-colorschemes'

" Syntax and code checking
"Plugin 'nvie/vim-flake8.git'
Plugin 'scrooloose/syntastic'

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

set tabstop=4
set shiftwidth=4
set expandtab

" syntax highlight
syntax on

" Different settings for GUI and console VIM
if has('gui_running')
  set guioptions-=T  " no toolbar
  colorscheme codeschool
else
  colorscheme 256-grayvim
endif

" Show line length limitation
set cc=80

" switch between buffers
map <C-PageDown> :bn<CR>
map <C-PageUp> :bp<CR>

" latex stuff
let g:Tex_DefaultTargetFormat='pdf'
let g:Tex_MultipleCompileFormats='dvi,pdf'
autocmd FileType plaintex,tex,latex syntax spell toplevel

" spell checking
set spelllang=en_gb spell
