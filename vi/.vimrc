syntax enable
syntax on

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

let @t='>>j'
map <Leader>j :CommandTJump<CR>

function! DiffWithFileFromDisk()
        let filename=expand('%')
        let diffname = filename.'.fileFromBuffer'
        exec 'saveas! '.diffname
        diffthis
        vsplit
        exec 'edit '.filename
        diffthis
endfunction

nmap <Leader>d :call DiffWithFileFromDisk()<cr>

call pathogen#incubate()
call pathogen#helptags()
