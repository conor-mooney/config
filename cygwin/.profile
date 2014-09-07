# echo "---- ~/.profile ----"

TTYNO=`tty | sed "s:/dev/tty::"`
let TTYNO=$TTYNO+1
export TTYNO

case $TERM in
    xterm*)
        #PS1="\[\033]0;<$TTYNO> \u@\h: \w\007\][\W]\\$ "
        PS1="\[\033]0;<$TTYNO> \u@\h: \w\007\]\[\e[1;33m\][\W]\\$ \[\e[m\]"
        #PS1="\[\e[1;33m\][\W]\\$ \[\e[m\]"
        ;;
    rxvt*)
        PS1="\[\e[1;33m\][\W]\\$ \[\e[m\]"
        ;;
    *)
		PS1="\[\e[1;33m\][\W]\\$ \[\e[m\]"
        ;;
esac

export CYGWIN="check_case:adjust nontsec tty"
export HOME="/home/conor"
export CDPATH='.:/cygdrive/c/:/:/local:/data:/cygdrive/c/Documents and Settings:/cygdrive/c/Documents and Settings/conor:/cygdrive/c/Documents and Settings/conor/My Documents:/cygdrive/c/dev:/cygdrive/c/Program Files'
export PATH=.:~/bin:/usr/sbin:$PATH
export SVN_EDITOR="vi"

eval `dircolors -b ~/.DIR_COLORS`

# cd ~

set -o ignoreeof
shopt -s cdspell


. ~/.bashrc
