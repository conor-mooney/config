export LS_COLORS='rs=0:di=01;34:ln=01;36:mh=00:pi=40;33:so=01;35:do=01;35:bd=40;33;01:cd=40;33;01:or=40;31;01:su=37;41:sg=30;43:ca=30;41:tw=30;42:ow=34;42:st=37;44:ex=01;32:*.tar=01;31:*.tgz=01;31:*.arj=01;31:*.taz=01;31:*.lzh=01;31:*.lzma=01;31:*.tlz=01;31:*.txz=01;31:*.zip=01;31:*.z=01;31:*.Z=01;31:*.dz=01;31:*.gz=01;31:*.lz=01;31:*.xz=01;31:*.bz2=01;31:*.bz=01;31:*.tbz=01;31:*.tbz2=01;31:*.tz=01;31:*.deb=01;31:*.rpm=01;31:*.jar=01;31:*.war=01;31:*.ear=01;31:*.sar=01;31:*.rar=01;31:*.ace=01;31:*.zoo=01;31:*.cpio=01;31:*.7z=01;31:*.rz=01;31:*.jpg=01;35:*.jpeg=01;35:*.gif=01;35:*.bmp=01;35:*.pbm=01;35:*.pgm=01;35:*.ppm=01;35:*.tga=01;35:*.xbm=01;35:*.xpm=01;35:*.tif=01;35:*.tiff=01;35:*.png=01;35:*.svg=01;35:*.svgz=01;35:*.mng=01;35:*.pcx=01;35:*.mov=01;35:*.mpg=01;35:*.mpeg=01;35:*.m2v=01;35:*.mkv=01;35:*.webm=01;35:*.ogm=01;35:*.mp4=01;35:*.m4v=01;35:*.mp4v=01;35:*.vob=01;35:*.qt=01;35:*.nuv=01;35:*.wmv=01;35:*.asf=01;35:*.rm=01;35:*.rmvb=01;35:*.flc=01;35:*.avi=01;35:*.fli=01;35:*.flv=01;35:*.gl=01;35:*.dl=01;35:*.xcf=01;35:*.xwd=01;35:*.yuv=01;35:*.cgm=01;35:*.emf=01;35:*.axv=01;35:*.anx=01;35:*.ogv=01;35:*.ogx=01;35:*.aac=00;36:*.au=00;36:*.flac=00;36:*.mid=00;36:*.midi=00;36:*.mka=00;36:*.mp3=00;36:*.mpc=00;36:*.ogg=00;36:*.ra=00;36:*.wav=00;36:*.axa=00;36:*.oga=00;36:*.spx=00;36:*.xspf=00;36:'

export BREW_PATH=/usr/local/bin
export PATH=.:$HOME/bin:$BREW_PATH:$PATH

export CDPATH=.:$HOME:$HOME/Documents:$HOME/Documents/organisations:$HOME/Documents/people:$HOME/Documents/projects:$HOME/projects:$HOME/private
if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi

export EDITOR=/usr/bin/vi
export PROMPT_COMMAND='echo -ne "\033]0;${PWD/#$HOME/~}\007"'


# START: MacPorts
##
# Your previous /Users/conor/.bash_profile file was backed up as /Users/conor/.bash_profile.macports-saved_2013-08-02_at_10:40:58
##

# MacPorts Installer addition on 2013-08-02_at_10:40:58: adding an appropriate PATH variable for use with MacPorts.
#export PATH=/opt/local/bin:/opt/local/sbin:$PATH
# Finished adapting your PATH environment variable for use with MacPorts.
# END: MacPorts


# START: Python virtual env
#if [ -f ~/.bash_virtualenv ]; then
#    source ~/.bash_virtualenv
#fi
# hard code location of python virtualens
export WORKON_HOME=$HOME/.python_virtualenvs
source /usr/local/bin/virtualenvwrapper.sh
# END: Python virtual env


#source .profile

# RVM OR RBENV - NOT BOTH!
# RVM - Ruby Version Manager
#[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

# RBENV - Ruby Version Manager
#export PATH=$HOME/.rbenv/bin:$PATH
#eval "$(rbenv init -)"

# NVM - Node Version Manager
[ -s $HOME/.nvm/nvm.sh ] && . $HOME/.nvm/nvm.sh # This loads NVM

<<<<<<< HEAD
source .bashrc
source .bash_aliases

=======
#powerline
#. /usr/local/lib/python2.7/site-packages/powerline/bindings/bash/powerline.sh
>>>>>>> 1b545b5baf46f54e7f50c07d41e254a7a5c78a41
