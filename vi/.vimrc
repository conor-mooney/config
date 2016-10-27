" colourschemes I like ...
"colorscheme autumn
"colorscheme autumnleaf
colorscheme colorsbox-stbright
"colorscheme desert2
"colorscheme github
"colorscheme jellybeans2
"colorscheme kellys
"colorscheme kib_darktango
"colorscheme lucius
"colorscheme norwaytoday
"colorscheme pleasant
"colorscheme pacific
"colorscheme perfect
"colorscheme pleasant
"colorscheme predawn
"solarized8_low_high
"colorscheme term
"LuciusWhite

" override diff colours for any selected colour scheme
highlight DiffAdd cterm=none ctermfg=black ctermbg=Green gui=none guifg=black guibg=Green
highlight DiffDelete cterm=none ctermfg=black ctermbg=Red gui=none guifg=black guibg=Red
highlight DiffChange cterm=none ctermfg=black ctermbg=Yellow gui=none guifg=black guibg=Yellow
highlight DiffText cterm=none ctermfg=black ctermbg=Cyan gui=none guifg=black guibg=Cyan

"powerline fonts
"airline & powerline fonts
let g:airline_theme = 'light'
let airline_powerline_fonts = 1
let g:Powerline_symbols = 'fancy'

" jellybeans colour overides
let g:jellybeans_overrides = {
\ 'Todo':         { 'guifg': '303030', 'guibg': 'ffff00', 'ctermfg': 'Black', 'ctermbg': 'yellow', 'attr': 'bold' }, 
\ 'Visual':       { 'guifg': '', 'guibg': '505050', 'attr': '', 'ctermfg': '', 'ctermbg': 'Black' },
\ 'VertSplit':    { 'guifg': '555555', 'guibg': '808080', 'attr': '', 'ctermfg': 'Black', 'ctermbg': 'Black' },
\}

" light-line
let g:lightline = {
      \ 'colorscheme': 'jellybeans',
      \ 'separator': { 'left': "\ue0b0", 'right': "\ue0b2" },
      \ 'subseparator': { 'left': "\ue0b1", 'right': "\ue0b3" }
      \ }


" textile
" " OSX
let g:TnextileBrowser="Google Chrome"
"Linux
"let g:TextileOS="Linux"
"let g:TextileBrowser="/usr/bin/google-chrome"
 

set nocompatible
set cursorline
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
set ffs=unix,mac,dos


" Nerdtree
let g:NERDTreeChDirMode=2
let g:NERDTreeIgnore = ['__pycache__', '\.class$', '\.pyc$', '\.o$', '\.d$', '\.crf$']
let g:NERDTreeBookmarksSort=1


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
    nnoremap <buffer> <silent> <C-@> :call <sid>DeleteBuffer()<cr>
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
let g:ctrlp_arg_map=1


" srcexpl
nmap <Leader>j :SrcExplToggle<CR>
let g:SrcExpl_winHeight = 12
let g:SrcExpl_refreshTime = 100
let g:SrcExpl_searchLocalDef = 1 
let g:SrcExpl_isUpdateTags = 0 
let g:SrcExpl_updateTagsCmd = "ctags --sort=foldcase -R ."
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
nmap <Leader>. :CtrlPTag<CR>

nmap <Leader>e :Explore<CR>
nmap <Leader>f :Ack 
nmap <Leader>g :TagbarToggle<CR>
"nmap <Leader>j :CommandTJump<CR>
nmap <Leader>k :call DiffWithFileFromDisk()<CR>
nmap <Leader>n :NERDTreeToggle<CR>
nmap <Leader>m :NERDTreeMirror<CR>
nmap <Leader>t :NERDTreeFind<CR>
nmap <Leader>q <C-W>q<CR>
nmap <Leader>Q :qa!<CR>
nmap <Leader>U :UndotreeToggle<CR>
nmap <Leader>w :bp\|bd #<CR>
"nmap <Leader>z :FufFile<CR>

" latex
nmap <Leader>P :!latexmk -shell-escape -pdf %<CR>
nmap <Leader>p :!latexmk -shell-escape -pdf main<CR>

" quich finder
nnoremap ,f :call FilteringNew().addToParameter('alt', @/).run()<CR>
nnoremap ,F :call FilteringNew().parseQuery(input('>'), '\|').run()<CR>
nnoremap ,g :call FilteringGetForSource().return()<CR>

" sessions
let g:session_autosave = 'yes'

" Linux clipboard shortcuts - note that <CMD>ACVX work in MacVim by default
"noremap <A-a> GVgg
"noremap <A-c> "+y
"noremap <A-v> "+p
"noremap <A-x> "+x

" coffee script
let g:tlist_coffee_settings = 'coffee;f:function;v:variable'
let showmarks_enable = 0

" ctags
set tags=./tags;

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

" spell check
 nmap <Leader>l :setlocal spell! spelllang=en_gb<CR>

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
