let mapleader = ','
set nocompatible
filetype plugin on
syntax enable
"set background=dark
"colorscheme solarized
set number
set ts=4
set autoindent
set expandtab
set shiftwidth=4
set showmatch
let python_highlight_all=1
set cursorline
filetype indent on
set foldenable
set foldmethod=indent
set nowrap
set scrolloff=5
set foldlevelstart=99           " start out with everything unfolded
set foldopen=block,hor,insert,jump,mark,percent,quickfix,search,tag,undo
                                " which commands trigger auto-unfold

nnoremap ; :
nnoremap : ;

" jk is escape
inoremap jk <esc>

let g:slime_target = "tmux"
let g:slime_python_ipython = 1

execute pathogen#infect()

" Syntastic options
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

autocmd BufWritePost *.py call flake8#Flake8()
