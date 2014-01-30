colorscheme desert

# OSX - MacVim
#set gfn=Menlo\ Regular:h12

# Linux - gvim
#set lines=70 columns=200
#set guifont=Monospace\ 9

autocmd vimenter * TlistOpen
autocmd vimenter * NERDTree
autocmd vimenter * if !argc() | NERDTree | endif
let NERDTreeShowBookmarks=1
