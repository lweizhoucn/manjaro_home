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

call plug#end()
