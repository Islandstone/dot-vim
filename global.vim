call pathogen#infect()
syntax on
filetype plugin indent on

" Do not save a backup file, delete it when vim is closed
set nobackup

" UI style options
colorscheme jellybeans
set guifont=Inconsolata\ 13
set guicursor+=a:blinkon0
set guioptions-=rLt

" Proper encoding
set encoding=utf-8

" Default indent settings
set cindent
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

" Some useful mappings
inoremap jj <ESC>
noremap <Leader><Leader> <ESC>:ZoomWin<CR>

" Moving lines up and down
nnoremap <C-j> :m+<CR>==
nnoremap <C-k> :m-2<CR>==
inoremap <C-j> <ESC>:m+<CR>==gi
inoremap <C-k> <ESC>:m-2<CR>==gi
vnoremap <C-k> :m-2<CR>gv=gv
vnoremap <C-j> :m'>+<CR>gv=gv

" Tag List options
let g:Tlist_Use_Right_Window=1

" DelimitMate options
let g:delimitMate_expand_cr=1
