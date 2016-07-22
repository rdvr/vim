"load pathogen plugin manager
execute pathogen#infect()

"basic vim settings
"enable VIM functionality
set nocompatible
"enable auto indenting
set autoindent
"enable line numbering
set number
"show any incomplete commands in the status bar
set showcmd
"set indenting to use 4 spaces 
set sw=4 ts=4 sts=4 et 
"enable syntax highlighting
syntax on
"disable arrow keys
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>
"on search, do an incremental search
set incsearch

"maximize GVim on startup
if has("gui_running")
    set lines=999 columns=999
endif

"settings for vim-airline status bar
set laststatus=2

"settings for the syntastic plugin
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

"settings for the git-gutter plugin
set updatetime=250

filetype plugin indent on
