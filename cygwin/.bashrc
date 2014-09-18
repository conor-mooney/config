# echo "---- ~/.bashrc ----"


# alias convenient commands
alias a:="cd a:" b:="cd b:" c:="cd c:" d:="cd d:" e:="cd e:" f:="cd f:"
alias g:="cd g:" h:="cd h:" i:="cd i:" j:="cd j:" k:="cd k:" l:="cd l:"
alias m:="cd m:" n:="cd n:" o:="cd o:" p:="cd p:" q:="cd q:" r:="cd r:"
alias s:="cd s:" t:="cd t:" u:="cd u:" v:="cd v:" w:="cd w:" x:="cd x:"
alias y:="cd y:" z:="cd z:"

alias md=mkdir
alias rd=rmdir
alias cls=clear
alias ls="ls --color"
alias grep="grep -a --color"
alias egrep="grep -a --color"
alias ps="ps -W"
alias copy="cp"
alias rename="mv"
alias type="cat"
alias colour=color
alias ..="cd .."
alias ...="cd ../.."
alias ssh="ssh -Y"
alias hd="xxd"
alias wipe="shred -fuz"
alias ducks="du -hsc"
alias hist=history
alias ducs='du -hsc'

alias cb="cd /cygdrive/c/dev/collaborate/collaborate_ruby"
alias cit="cd /cygdrive/c/dev/azimuth/control_it"
alias az="cd /cygdrive/c/dev/azimuth"

alias mymysql="mysql -h127.0.0.1 -uroot -proot"
alias mysqlstart="mysqld --console"
alias mysqlstop="mysqladmin -h127.0.0.1 -uroot -proot shutdown"
alias mymysqldump="mysqldump -h127.0.0.1 -uroot -proot"

alias rack="ack --ruby"
alias resetdb="rake db:drop ; rake db:create ; rake db:migrate"

alias tn='. ~/bin/tno'
