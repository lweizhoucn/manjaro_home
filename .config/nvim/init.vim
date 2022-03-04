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

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }

call plug#end()

" 设置为双字宽显示，否则无法完整显示如:☆
set ambiwidth=double

" airline config 

" 总是显示状态栏
let laststatus = 2 
" let g:airline_powerline_fonts = 1
let g:airline_theme='molokai'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_nr_show = 1


if !exists('g:airline_symbols')
	let g:airline_symbols = {}
endif

let g:airline_left_sep = '⮀'
let g:airline_left_alt_sep = '⮁'
let g:airline_right_sep = '⮂'
let g:airline_right_alt_sep = '⮃'
let g:airline_symbols.branch = '⭠'
let g:airline_symbols.readonly = '⭤'
let g:airline_symbols.linenr = '⭡'


nnoremap <silent> [b :bp<CR>
nnoremap <silent> ]b :bn<CR>


" file explore config


