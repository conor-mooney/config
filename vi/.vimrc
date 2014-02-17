syntax enable
syntax on

highlight DiffAdd cterm=none ctermfg=black ctermbg=Green gui=none guifg=black guibg=Green
highlight DiffDelete cterm=none ctermfg=black ctermbg=Red gui=none guifg=black guibg=Red
highlight DiffChange cterm=none ctermfg=black ctermbg=Yellow gui=none guifg=black guibg=Yellow
highlight DiffText cterm=none ctermfg=black ctermbg=Cyan gui=none guifg=black guibg=Cyan

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
nmap <Leader>c :diffthis<CR>

let g:tlist_coffee_settings = 'coffee;f:function;v:variable'

call pathogen#incubate()
call pathogen#helptags()
call pathogen#infect()

filetype plugin indent on

cd ~/projects
