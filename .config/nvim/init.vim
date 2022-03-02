if empty(glob($HOME.'/.config/nvim/autoload/plug.vim'))
	silent !curl -fLo $HOME/.config/nvim/autoload/plug.vim --create-dirs
				\ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
	autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif





set nu
set hidden
set wrap
set autoindent
set wildmenu

let mapleader=" "
noremap ; :
inoremap jk <ESC>


call plug#begin('$HOME/.config/nvim/plugged')


Plug 'RRethy/vim-hexokinase', { 'do': 'make hexokinase' }
Plug 'ojroques/vim-scrollstatus'
Plug 'ncm2/ncm2'
Plug 'roxma/nvim-yarp'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

call plug#end()


let g:airline_theme='term'
let g:airline_symbols={}
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.colnr = ' :'
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ' :'
let g:airline_symbols.maxlinenr = '☰ '
let g:airline_symbols.dirty='⚡'

