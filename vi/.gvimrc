colorscheme desert

highlight DiffAdd cterm=none ctermfg=black ctermbg=Green gui=none guifg=black guibg=Green
highlight DiffDelete cterm=none ctermfg=black ctermbg=Red gui=none guifg=black guibg=Red
highlight DiffChange cterm=none ctermfg=black ctermbg=Yellow gui=none guifg=black guibg=Yellow
highlight DiffText cterm=none ctermfg=black ctermbg=Cyan gui=none guifg=black guibg=Cyan

" OSX - MacVim
"set gfn=Menlo\ Regular:h12

" Linux
"set lines=80 columns=300
"set guifont=Ubuntu\ Mono\ 11

if &diff
    autocmd vimenter * TagbarClose
    autocmd vimenter * NERDTreeClose
else
    autocmd vimenter * TagbarToggle
    autocmd vimenter * NERDTreeToggle | wincmd p
endif

let NERDTreeShowBookmarks=1
