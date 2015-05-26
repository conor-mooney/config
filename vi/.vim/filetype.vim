au! BufRead,BufNewFile *.har set filetype=json

au! FileType gitcommit setlocal spell spelllang=en_gb
au! BufRead,BufNewFile *.md setlocal spell spelllang=en_gb
au! BufRead,BufNewFile *.txt setlocal spell spelllang=en_gb

if exists("did_load_filetypes_userafter")
    finish
endif

let did_load_filetypes_userafter = 1

augroup filetypedetect
	au! BufRead,BufNewFile *.json set filetype=json
    au! BufRead,BufNewFile *.py set filetype=python
	au! BufNewFile,BufRead *.redmine set filetype=redminewiki
	au! BufRead,BufNewFile /etc/nginx/*,/usr/local/nginx/conf/* if &ft == '' | setfiletype nginx | endif 
augroup END
