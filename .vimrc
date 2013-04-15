set ts=4
set noai
set ruler
syntax on
set background=dark
let g:molokai_original=1
set t_Co=256 
colorscheme molokai

" set tabstop to 8 for makefiles (needs ftp plugin)
au FileType make set ts=8

nnoremap tn :tabnew<CR>
nnoremap tc :tabclose<CR>
" tabs 1 to 10
nnoremap t1 1gt
nnoremap t2 2gt
nnoremap t3 3gt
nnoremap t4 4gt
nnoremap t5 5gt
nnoremap t6 6gt
nnoremap t7 7gt
nnoremap t8 8gt
nnoremap t9 9gt
nnoremap t0 10gt
" previous / next tab
nnoremap tk gt
nnoremap tj gT
