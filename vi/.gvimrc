
"Linux fonts - uncomment one
"set guifont=Liberation\ Mono\ \Bold\ 10
"set guifont=Ubuntu\ Mono\ 11
"set guifont=Ubuntu\ Mono\ derivative\ Powerline\ 11
"set guifont=Liberation\ Mono\ for\ Powerline\ 10
set guifont=DejaVu\ Sans\ Mono\ for\ Powerline\ 9

"OS-X Fonts - uncomment one
"set gfn=Menlo\ Regular:h12
"set gfn=Liberation\ Mono\ for\ Powerline:h12
"set gfn=DejaVu\ Sans\ Mono\ for\ Powerline:h12
"set gfn=Droid\ Sans\ Mono\ for\ Powerline:h12

if &diff
    autocmd vimenter * TagbarClose
    autocmd vimenter * NERDTreeClose
	colorscheme github
else
    autocmd vimenter * TagbarToggle
    autocmd vimenter * NERDTreeToggle | wincmd p
endif

let NERDTreeShowBookmarks=1

" following only needed for Linux as macvim remembers last layout
"set lines=80 columns=300
