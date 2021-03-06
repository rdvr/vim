set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Plugins
Plugin 'vim-airline/vim-airline'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-repeat'
Plugin 'tpope/vim-markdown'
Plugin 'mattn/emmet-vim'
Plugin 'scrooloose/syntastic'
Plugin 'edsono/vim-matchit'
Plugin 'kien/ctrlp.vim'
Plugin 'airblade/vim-gitgutter'
Plugin 'klen/python-mode'
Plugin 'terryma/vim-multiple-cursors'

" Colourschemes
Plugin 'altercation/vim-colors-solarized'

" All of your Plugins must be added before the following line
call vundle#end()            " required

if has('autocmd')
    filetype plugin indent on
endif

set number
set relativenumber
set sw=4 ts=4 sts=4 et 

syntax on

set listchars=tab:▸\ ,eol:¬
set list

set textwidth=80
set colorcolumn=+1

set wildmenu
set incsearch

set laststatus=2

if has("gui_running")
    if has("gui_gtk2")
        set guifont=Inconsolata\ 14
    endif
endif

noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>
inoremap <Up> <NOP>
inoremap <Down> <NOP>
inoremap <Left> <NOP>
inoremap <Right> <NOP>

nmap gO O<Esc>S<Esc>j
nmap go o<Esc>S<Esc>k

nmap <C-Up> ddkP
nmap <C-Down> ddp
vmap <C-Up> xkP`[V`]
vmap <C-Down> xp`[V`]

" Pandoc - apt-get install pandoc
" Markdown to HTML
nmap <Leader>h :%!/usr/bin/pandoc -f markdown -t html<cr>
" HTML to Markdown
nmap <Leader>m :%!/usr/bin/pandoc -f html -t markdown<cr>
" Markdown to ODF
nmap <Leader>o :%!/usr/bin/pandoc -f markdown -t odt -o %.odt<cr>

" Syntastic Plugin Settings
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" Git gutter settings
set updatetime=250

autocmd BufNewFile,BufReadPost *.md set filetype=markdown
