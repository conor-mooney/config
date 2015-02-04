let g:csv_no_conceal = 1

" override csv colours for any selected colour scheme
highlight CSVColumnEven term=none cterm=none ctermfg=105 ctermbg=none gui=none guifg=#c6b6ee guibg=black
highlight CSVColumnOdd term=none cterm=none ctermfg=214 ctermbg=none gui=none guifg=#fad07a guibg=black
highlight CSVColumnHeaderEven cterm=bold ctermfg=105 ctermbg=DarkGray gui=bold guifg=#c6b6ee guibg=#707070
highlight CSVColumnHeaderOdd  cterm=bold ctermfg=214 ctermbg=DarkGray gui=bold guifg=#fad07a guibg=#707070
