Configuration and utilities
===========================
A repository containing settings / configurations for Linux / OS-X that I find useful.

bin
---
Contains utilities (mostly Bash shell) that I find useful.

* `ack` - a copy of the Ack recursive grep utility
* `bkup` - a backup script that copies specified files into `~/.backlup`
* `git-diffall` - needed by Git difftool for use with Git prior to version 1.7.11
* `listen_ports` - list all ports that are being listened on.
* `ls_tunnels` - list all active ssh tunnels
* `rm_colour` - used for removing (ANSI) termcolours from a stream.
* `ssh_hosts` - lists all the ssh aliases in `~/.ssh/config`
* `vdirdiff` - a directory comparison tool.  This relies on `gvim` or `macvim` and the vi `dirdiff` plugin.

common
------
Config files for Ack etc.

ctags
-----
Ctags configuration for use with TagList or TagBar VI plugin.  It contains extra configursation for use with Coffeescript files.

git
---
Contains sample `.gitconfig` files.  There are both Linux and OS-X version sof this configuration.

linux
-----
Scripts and configurations that are specific to Linux.

osx
---
Scripts and configuration that are specific to Apple OS-X

vi
--
Vim plugins and configurations that I find useful.

Plugins and configurations are applicable to both text and graphic (`gvim` on Linux and `macvim` on OS-X) versions of VI. All plugin help files should automatically appear in VI help.

    .vim
    |-- autoload
    +-- bundle
    |   +-- L9
    |   +-- ack
    |   +-- command-t
    |   +-- csv.vim
    |   +-- delimitmate
    |   +-- dirdiff
    |   +-- fugitive
    |   +-- fuzzy-finder
    |   +-- nerdcommenter
    |   +-- nerdtree
    |   +-- quich-filter
    |   +-- showmarks
    |   +-- supertab
    |   +-- tagbar
    |   +-- taglist
    |   +-- vim-airline
    |   +-- vim-coffee-script
    |   +-- vim-mustache-handlebars
    |   +-- vim-powerline
    |   +-- vim-signify
    |   +-- vim-unimpaired
    |   +-- yaml
    +-- colors

*Pathogen* is used to manage the VI plugins.  Most plugins will run by simply putting them in the `bundle` folder but some plugins require some extra work to get them up and running:

**ack**

* This ack pluging requires you to have already installed the ack recurisive grep utility.  The plugin just glues `ack` and `vi` together.

**command-t**

* This requires ruby to install and run.

1. Using rvm set Ruby version to 1.8.7
2. From `commandt` run `$ ruby rake`
3. From `commandt/ruby/commandt` run `$ ruby extconf.rb`
4. From `commandt/ruby/commandt` run `$ make`

**tagbar / taglist**

* Requires the brew version of ctags to run on OS-X - `$ brew install ctags`
* Need to add sample `.ctags` file in `ctags` folder to work with Coffeescript

**powerline**

* This integrates the powerline fonts into the Airline plugin.  Airline works fine without these fonts, the improvement in appearance using powerline is marginal.  You need to install the Powerline fonts in addtion to this VI plugin.
* see [installing powerline fonts](https://powerline.readthedocs.org/en/latest/introduction.html) 

zsh
---
My configuration for use with Zsh shell.

