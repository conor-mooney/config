let g:csv_no_conceal = 1

" override csv colours for any selected colour scheme
highlight CSVColumnEven term=none cterm=none ctermfg=Yellow ctermbg=none gui=none guifg=Yellow guibg=black
highlight CSVColumnOdd term=none cterm=none ctermfg=Cyan ctermbg=none gui=none guifg=Cyan guibg=black
highlight CSVColumnHeaderEven cterm=bold ctermfg=Yellow ctermbg=DarkGray gui=none guifg=Yellow guibg=DarkGray
highlight CSVColumnHeaderOdd  cterm=bold ctermfg=Cyan ctermbg=DarkGray gui=none guifg=Cyan guibg=DarkGray
