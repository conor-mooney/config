# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
#umask 022

# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
	. "$HOME/.bashrc"
    fi
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH=".:$HOME/bin:$PATH"
fi

# add local/bin to path (needed for powerline)
if [ -d "$HOME/.local/bin" ] ; then
    PATH="$PATH:$HOME/.local/bin"
fi

export CDPATH=".:$HOME:$HOME/documents:$HOME/projects"

# Python
export PYTHONPATH="$PYTHONPATH:$HOME/projects"

export SVN_EDITOR=vi
export WORKON_HOME=~/.python_envs

# RBENV
export PATH=.:$HOME/.rbenv/bin:$PATH
eval "$(rbenv init -)"

# node
#export NODE_PATH=/usr/local/lib/jsctags/:$NODE_PATH
export NVM_DIR=$HOME/.nvm

set -o ignoreeof
