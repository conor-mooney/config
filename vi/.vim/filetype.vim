
if exists("did_load_filetypes_userafter")
    finish
endif

let did_load_filetypes_userafter = 1

augroup filetypedetect
    au! BufRead,BufNewFile *.json set filetype=json
    au! BufRead,BufNewFile *.py set filetype=python
augroup END
