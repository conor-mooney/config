colorscheme jellybeans2
"colorscheme lucius
"LuciusWhite

" override diff colours for any selected colour scheme
highlight DiffAdd cterm=none ctermfg=black ctermbg=Green gui=none guifg=black guibg=Green
highlight DiffDelete cterm=none ctermfg=black ctermbg=Red gui=none guifg=black guibg=Red
highlight DiffChange cterm=none ctermfg=black ctermbg=Yellow gui=none guifg=black guibg=Yellow
highlight DiffText cterm=none ctermfg=black ctermbg=Cyan gui=none guifg=black guibg=Cyan

"powerline fonts
let airline_powerline_fonts = 1
let g:Powerline_symbols = 'fancy'

set nocompatible
set laststatus=2
set background=dark
set wrap
set tabstop=4
"set expandtab
set shiftwidth=4
set ignorecase
set smartcase
set hlsearch
set showmatch
set incsearch
set autoindent
set vb
set number
set nocompatible
set mouse=a
set t_Co=256
set encoding=utf-8


" supertab
let g:SuperTabNoCompleteAfter = ['^', ',', '\s']


" function to allow comparing buffer with original file
function! DiffWithFileFromDisk()
    let filename=expand('%')
    let diffname = filename.'.fileFromBuffer'
    exec 'saveas! '.diffname
    diffthis
    vsplit
    exec 'edit '.filename
    diffthis
endfunction


" function to allow removal of selected buffers in ctrlp
" <C-p> then <C-z> to select and then <C-@> to remove buffer
set runtimepath^=~/.vim/bundle/ctrlp.vim
let g:ctrlp_match_window = 'top,order:btt,min:1,max:10,results:100'
let g:ctrlp_buffer_func = { 'enter': 'MyCtrlPMappings' }
func! MyCtrlPMappings()
    nnoremap <buffer> <silent> <c-@> :call <sid>DeleteBuffer()<cr>
endfunc
func! s:DeleteBuffer()
    let line = getline('.')
    let bufid = line =~ '\[\d\+\*No Name\]$' ? str2nr(matchstr(line, '\d\+'))
        \ : fnamemodify(line[2:], ':p')
    exec "bd" bufid
    exec "norm \<F5>"
endfunc

let g:ctrlp_mruf_exclude = '/tmp/.*\|/temp/.*|/var/.*'
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\.(git|hg|svn)|(/tmp/)$',
  \ 'file': '\v\.(exe|so|dll|orig)$',
  \ }


" srcexpl
nmap <Leader>j :SrcExplToggle<CR>
let g:SrcExpl_jumpKey = "<ENTER>"
let g:SrcExpl_pluginList = [
         \ "__Tag_Bar__",
         \ "_NERD_tree_"
	\ ] 


let Tlist_Use_Right_Window = 1
"let g:csv_no_conceal = 1

" ctrlp
nmap <Leader>b :CtrlPBuffer<CR>
nmap <Leader>z :CtrlPMRU<CR>

nmap <Leader>e :Explore<CR>
nmap <Leader>f :Ack 
nmap <Leader>g :TagbarToggle<CR>
"nmap <Leader>j :CommandTJump<CR>
nmap <Leader>k :call DiffWithFileFromDisk()<CR>
nmap <Leader>n :NERDTreeToggle<CR>
nmap <Leader>q <C-W>q<CR>
nmap <Leader>Q :qa!<CR>
nmap <Leader>t :UndotreeToggle<CR>
nmap <Leader>w :bp\|bd #<CR>
"nmap <Leader>z :FufFile<CR>

" quich finder
nnoremap ,f :call FilteringNew().addToParameter('alt', @/).run()<CR>
nnoremap ,F :call FilteringNew().parseQuery(input('>'), '\|').run()<CR>
nnoremap ,g :call FilteringGetForSource().return()<CR>

" Linux clipboard shortcuts - note that <CMD>ACVX work in MacVim by default
"noremap <A-a> GVgg
"noremap <A-c> "+y
"noremap <A-v> "+p
"noremap <A-x> "+x

" for ctags and coffeescript
let g:tlist_coffee_settings = 'coffee;f:function;v:variable'
let showmarks_enable = 0

" diff toggle
nmap <Leader>c :diffthis<CR>
nmap <Leader>o :diffoff!<CR>

" diff
if &diff
	set diffopt += "iwhite"
endif

" dirdiff
let g:DirDiffExcludes = ".git,.hg,CVS,*.class,*.exe,.*.swp,*.orig"
let g:DirDiffIgnore = "Id:,Revision:,Date:"
let g:DirDiffAddArgs = "-w"

set diffexpr=MyDiff()
function MyDiff()
	silent execute "!diff -a --binary " . g:DirDiffAddArgs . " " . v:fname_in . " " . v:fname_new .  " > " . v:fname_out
endfunction

call pathogen#incubate()
call pathogen#helptags()
call pathogen#infect()

filetype plugin indent on

let g:closetag_html_style=1 

" the following 'cd' is commented out in order for dirdiff to work properly with both mercurial and git
" needs -c 'cd ~' applied to difftool in gitconfig
"cd ~/projects

syntax enable
syntax on
