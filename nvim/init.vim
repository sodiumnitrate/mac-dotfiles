call plug#begin('~/.local/share/nvim/plugged')

Plug 'davidhalter/jedi-vim'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'zchee/deoplete-jedi'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'jiangmiao/auto-pairs'
Plug 'scrooloose/nerdtree'
Plug 'neomake/neomake'
Plug 'machakann/vim-highlightedyank'
Plug 'navarasu/onedark.nvim'
Plug 'xiyaowong/nvim-transparent'

call plug#end()

let g:deoplete#enable_at_startup = 1
let g:airline_theme='wombat'
let g:neomake_python_enabled_makers = ['pylint']

" to automatically enable syntax checking with neomake
call neomake#configure#automake('nrwi', 500)


set backspace=indent,eol,start
set number
set encoding=utf-8

" flag unnecessary whitespace
highlight BadWhitespace ctermbg=red guibg=darkred
au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/
au BufRead,BufNewFile *.py match ErrorMsg '\%>100v.\+'

" proper PEP 8 indentation
au BufNewFile,BufRead *.py
	\ set tabstop=4 |
 	\ set softtabstop=4 |
 	\ set shiftwidth=4 |
 	\ set expandtab |
 	\ set autoindent |
 	\ set fileformat=unix

syntax on

" theme setup--------------------------------------------------
let g:onedark_config = {
		\'style': 'darker',
	\}

autocmd ColorScheme * highlight Normal ctermbg=NONE guibg=NONE


colorscheme onedark

let g:transparent_enabled = v:true
"----------------------------------------------
