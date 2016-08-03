"enable line numbering
set number
"set indenting to use 4 spaces 
set sw=4 ts=4 sts=4 et 
"enable syntax highlighting
syntax on

"column columns
set textwidth=80
set colorcolumn=+1

"disable arrow keys
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

nmap gO O<Esc>S<Esc>j
nmap go o<Esc>S<Esc>k

" bubble text
nmap <C-Up> ddkP
nmap <C-Down> ddp
vmap <C-Up> xkP`[V`]
vmap <C-Down> xp`[V`]

"on search, hilite matches, do an incremental search
set incsearch

filetype plugin indent on
