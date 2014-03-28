colorscheme jellybeans

highlight DiffAdd cterm=none ctermfg=black ctermbg=Green gui=none guifg=black guibg=Green
highlight DiffDelete cterm=none ctermfg=black ctermbg=Red gui=none guifg=black guibg=Red
highlight DiffChange cterm=none ctermfg=black ctermbg=Yellow gui=none guifg=black guibg=Yellow
highlight DiffText cterm=none ctermfg=black ctermbg=Cyan gui=none guifg=black guibg=Cyan

highlight CSVColumnEven term=bold ctermbg=4 guifg=Cyan
highlight CSVColumnOdd  term=bold ctermbg=5 guifg=LightGreen

"Linux fonts
"set guifont=Ubuntu\ Mono\ 11
"set guifont=Ubuntu\ Mono\ derivative\ Powerline\ 11
"set guifont=Liberation\ Mono\ for\ Powerline\ 10

"OS-X Fonts
"set gfn=Menlo\ Regular:h12
"set gfn=Liberation\ Mono\ for\ Powerline:h11
"set gfn=DejaVu\ Sans\ Mono\ for\ Powerline:h11
"set gfn=Droid\ Sans\ Mono\ for\ Powerline:h11

if &diff
    autocmd vimenter * TagbarClose
    autocmd vimenter * NERDTreeClose
else
    autocmd vimenter * TagbarToggle
    autocmd vimenter * NERDTreeToggle | wincmd p
endif

let NERDTreeShowBookmarks=1

"set lines=80 columns=300
