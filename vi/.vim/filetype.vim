
if exists("did_load_filetypes_userafter")
    finish
endif

let did_load_filetypes_userafter = 1

augroup filetypedetect
    au! BufRead,BufNewFile *.json set filetype=json
    au! BufRead,BufNewFile *.py set filetype=python
	au! BufRead,BufNewFile /etc/nginx/*,/usr/local/nginx/conf/* if &ft == '' | setfiletype nginx | endif 
augroup END
