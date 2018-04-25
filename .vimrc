syntax enable
set background=light
colorscheme solarized
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

" jk is escape
inoremap jk <esc>

let g:slime_target = "tmux"
let g:slime_python_ipython = 1
