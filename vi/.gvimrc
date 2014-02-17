colorscheme desert

highlight DiffAdd cterm=none ctermfg=black ctermbg=Green gui=none guifg=black guibg=Green
highlight DiffDelete cterm=none ctermfg=black ctermbg=Red gui=none guifg=black guibg=Red
highlight DiffChange cterm=none ctermfg=black ctermbg=Yellow gui=none guifg=black guibg=Yellow
highlight DiffText cterm=none ctermfg=black ctermbg=Cyan gui=none guifg=black guibg=Cyan

# OSX - MacVim
#set gfn=Menlo\ Regular:h12

# Linux - gvim
#set lines=70 columns=200
#set guifont=Monospace\ 9

autocmd vimenter * TlistOpen
autocmd vimenter * NERDTree
autocmd vimenter * if !argc() | NERDTree | endif
let NERDTreeShowBookmarks=1
