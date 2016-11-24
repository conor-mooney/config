alias ~='cd ~'
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'

alias vi='vim'
alias md=mkdir

alias hist=history
alias ducs='du -hsc'

alias clipin='xsel --clipboard'
alias clipout='xsel --clipboard -o'

alias l='ls'
alias ll='ls -lh'
alias lr='ls -lhrt'
alias browse='nautilus --browser'

alias dirdiff='diff -rbwq'

alias vboxmanage='VBoxManage'
alias vboxheadless='VBoxHeadless'

alias py=python
alias py3=python3
alias jy=jython
alias djm='python manage.py'
alias djmanage='python manage.py'
alias dja='django-admin.py'
alias djadmin='django-admin.py'

alias svndiff='svn diff --diff-cmd=meld'
alias svnrecent='svn log -l10'

alias be='bundle exec'
alias rr='rails runner'

alias aack="ack --ignore-dir=node_modules --ignore-dir=public"

alias b2d=boot2docker
alias dkr=docker

alias tags='ctags -R `pwd`'
alias pytags='ctags -a -R $VIRTUAL_ENV/lib/python2.7/site-packages'
