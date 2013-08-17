set ts=8
set noai
set ruler
syntax on
set background=dark
let g:molokai_original=1
set t_Co=256 
colorscheme molokai-trans

au BufRead,BufNewFile pico.* setfiletype text
au BufRead,BufNewFile *.sls setfiletype yaml
au BufRead,BufNewFile *.md,*.markdown setfiletype ghmarkdown

au FileType c colorscheme molokai
au FileType text set spell spelllang=en,fr
au FileType python set ts=4 expandtab

set list listchars=tab:»\ 

set colorcolumn=80
highlight ColorColumn ctermbg=8

" inside screen / tmux
map <Esc>[C <C-Right>
map <Esc>[D <C-Left>
map! <Esc>[C <C-Right>
map! <Esc>[D <C-Left>
" no screen
map <Esc>[1;5D <C-Left>
map <Esc>[1;5C <C-Right>
map! <Esc>[1;5D <C-Left>
map! <Esc>[1;5C <C-Right>

nnoremap <C-t> :tabnew<CR>
nnoremap <C-w> :tabclose<CR>
nnoremap <C-right> :tabnext<CR>
nnoremap <C-left> :tabprevious<CR>
inoremap <C-t> <Esc>:tabnew<CR>
inoremap <C-w> <Esc>:tabclose<CR>
inoremap <C-right> <Esc>:tabnext<CR>
inoremap <C-left> <Esc>:tabprevious<CR>
" tabs 1 to 10
nnoremap '1 1gt
nnoremap '2 2gt
nnoremap '3 3gt
nnoremap '4 4gt
nnoremap '5 5gt
nnoremap '6 6gt
nnoremap '7 7gt
nnoremap '8 8gt
nnoremap '9 9gt
nnoremap '0 10gt
" previous / next tab
nnoremap 'p gT
nnoremap 'n gt
