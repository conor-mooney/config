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
set mouse=a

function! DiffWithFileFromDisk()
    let filename=expand('%')
    let diffname = filename.'.fileFromBuffer'
    exec 'saveas! '.diffname
    diffthis
    vsplit
    exec 'edit '.filename
    diffthis
endfunction

let Tlist_Use_Right_Window   = 1

let @t='>>j'
nmap <Leader>j :CommandTJump<CR>
nmap <Leader>k :call DiffWithFileFromDisk()<CR>
nmap <Leader>f :Ack 
nmap <Leader>g :TagbarToggle<CR>
nmap <Leader>n :NERDTreeToggle<CR>
nmap <Leader>z :FufFile<CR>
nmap <Leader>e :Explore<CR>
nmap <Leader>w :bp\|bd #<CR>
nmap <Leader>q <C-W>q<CR>
nmap <Leader>Q :qa!<CR>
nmap <Leader>c :diffthis<CR>
nmap <Leader>o :diffoff!<CR>

let g:tlist_coffee_settings = 'coffee;f:function;v:variable'
let showmarks_enable = 0

call pathogen#incubate()
call pathogen#helptags()
call pathogen#infect()

filetype plugin indent on

cd ~/projects
