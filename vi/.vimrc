syntax enable
syntax on

set nocompatible
set background=dark
set wrap
set tabstop=4
set expandtab
set shiftwidth=4
set ignorecase
set smartcase
set hlsearch
set showmatch
set incsearch
set autoindent
set vb
set nu
set nocompatible

function! DiffWithFileFromDisk()
    let filename=expand('%')
    let diffname = filename.'.fileFromBuffer'
    exec 'saveas! '.diffname
    diffthis
    vsplit
    exec 'edit '.filename
    diffthis
endfunction

let @t='>>j'
nmap <Leader>j :CommandTJump<CR>
nmap <Leader>d :call DiffWithFileFromDisk()<CR>
nmap <Leader>f :Ack 
nmap <Leader>g :TlistOpen<CR>
nmap <Leader>n :NERDTree<CR>
nmap <Leader>z :FufFile<CR>
nmap <Leader>e :Explore<CR>
nmap <Leader>w :bp\|bd #<CR>
nmap <Leader>q <C-W>q<CR>

let g:tlist_coffee_settings = 'coffee;f:function;v:variable'

call pathogen#incubate()
call pathogen#helptags()
call pathogen#infect()

filetype plugin indent on

cd ~/projects
