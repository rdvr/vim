if has('autocmd')
    filetype plugin indent on
endif

" Vim improved mode
set nocompatible
 
set number
set sw=4 ts=4 sts=4 et 
syntax on

set textwidth=80
set colorcolumn=+1

set wildmenu
set incsearch

noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

nmap gO O<Esc>S<Esc>j
nmap go o<Esc>S<Esc>k

nmap <C-Up> ddkP
nmap <C-Down> ddp
vmap <C-Up> xkP`[V`]
vmap <C-Down> xp`[V`]
