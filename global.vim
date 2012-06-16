call pathogen#infect()
syntax on
filetype plugin indent on

" UI style options
colorscheme jellybeans
set guifont=Inconsolata\ 13
set guicursor+=a:blinkon0
set guioptions-=rLt

" Proper encoding
set encoding=utf-8

" Default indent settings
set smartindent
set expandtab
set tabstop=4
set shiftwidth=4
set nowrap

" Color column
set colorcolumn=80
set number
set numberwidth=5

" Template loading
function! LoadTemplate()
    silent! 0r ~/.vim/templates/template.%:e
endfunction
autocmd! BufNewFile * call LoadTemplate()

inoremap jj <ESC>
noremap <Leader><Leader> <ESC>:ZoomWin<CR>

" Tag List options
let g:Tlist_Use_Right_Window=1
