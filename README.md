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

mercurial
---------
Configuration file and mercurial templates.  Template files should go into `$HOME/.mercurial`

osx
---
Scripts and configuration that are specific to Apple OS-X

vi
--
Vim plugins and configurations that I find useful. Note that there are lines in `.vimrc` and `.gvimrc` that are specific to either OS-X or Linux that should be uncommented depending on which platform you are using.

Plugins and configurations are applicable to both text and graphic (`gvim` on Linux and `macvim` on OS-X) versions of VI. All plugin help files should automatically appear in VI help.

Run the `link_plugin` script from the `bundle` folder to link in the default (useful) set of available vi plugins.

    .vim
    +-- autoload
    |   +-- pathogen.vim
    +-- available_plugins
    |   +-- L9
    |   +-- ack
    |   +-- command-t
    |   +-- csv.vim
    |   +-- ctrlp.vim
    |   +-- delmitmate
    |   +-- dirdiff
    |   +-- emmet-vim
    |   +-- fugitive
    |   +-- fuzzy-finder
    |   +-- hexman
    |   +-- nerdcommenter
    |   +-- nerdtree
    |   +-- quich-filter
    |   +-- showmarks
    |   +-- snipmate
    |   +-- snipmate-nodejs
    |   +-- source-explorer
    |   +-- supertab
    |   +-- syntastic
    |   +-- tagbar
    |   +-- taglist
    |   +-- toggle_maximize
    |   +-- undotree
    |   +-- vim-airline
    |   +-- vim-autoformat
    |   +-- vim-coffee-script
    |   +-- vim-colors-solarized
    |   +-- vim-jade
    |   +-- vim-javascript-syntax
    |   +-- vim-json
    |   +-- vim-lawrencium
    |   +-- vim-mercenary
    |   +-- vim-mustache-handlebars
    |   +-- vim-node
    |   +-- vim-nodejs-complete
    |   +-- vim-powerline
    |   +-- vim-rails
    |   +-- vim-ruby
    |   +-- vim-signify
    |   +-- vim-surround
    |   +-- vim-unimpaired
    |   +-- yaml
    +-- bundle
    |   +-- L9 -> ../available_plugins/L9
    |   +-- ack -> ../available_plugins/ack
    |   +-- csv.vim -> ../available_plugins/csv.vim
    |   +-- ctrlp.vim -> ../available_plugins/ctrlp.vim
    |   +-- delmitmate -> ../available_plugins/delmitmate
    |   +-- dirdiff -> ../available_plugins/dirdiff
    |   +-- emmet-vim -> ../available_plugins/emmet-vim
    |   +-- fugitive -> ../available_plugins/fugitive
    |   +-- hexman -> ../available_plugins/hexman
    |   +-- nerdcommenter -> ../available_plugins/nerdcommenter
    |   +-- nerdtree -> ../available_plugins/nerdtree
    |   +-- quich-filter -> ../available_plugins/quich-filter
    |   +-- showmarks -> ../available_plugins/showmarks
    |   +-- snipmate -> ../available_plugins/snipmate
    |   +-- snipmate-nodejs -> ../available_plugins/snipmate-nodejs
    |   +-- source-explorer -> ../available_plugins/source-explorer
    |   +-- supertab -> ../available_plugins/supertab
    |   +-- syntastic -> ../available_plugins/syntastic
    |   +-- tagbar -> ../available_plugins/tagbar
    |   +-- toggle_maximize -> ../available_plugins/toggle_maximize
    |   +-- undotree -> ../available_plugins/undotree
    |   +-- vim-airline -> ../available_plugins/vim-airline
    |   +-- vim-autoformat -> ../available_plugins/vim-autoformat
    |   +-- vim-coffee-script -> ../available_plugins/vim-coffee-script
    |   +-- vim-colors-solarized -> ../available_plugins/vim-colors-solarized
    |   +-- vim-jade -> ../available_plugins/vim-jade
    |   +-- vim-javascript-syntax -> ../available_plugins/vim-javascript-syntax
    |   +-- vim-json -> ../available_plugins/vim-json
    |   +-- vim-lawrencium -> ../available_plugins/vim-lawrencium
    |   +-- vim-mustache-handlebars -> ../available_plugins/vim-mustache-handlebars
    |   +-- vim-nodejs-complete -> ../available_plugins/vim-nodejs-complete
    |   +-- vim-powerline -> ../available_plugins/vim-powerline
    |   +-- vim-rails -> ../available_plugins/vim-rails
    |   +-- vim-ruby -> ../available_plugins/vim-ruby
    |   +-- vim-signify -> ../available_plugins/vim-signify
    |   +-- vim-surround -> ../available_plugins/vim-surround
    |   +-- vim-unimpaired -> ../available_plugins/vim-unimpaired
    |   +-- yaml -> ../available_plugins/yaml
    +-- colors
    |   +-- desert2.vim
    |   +-- grb256.vim
    |   +-- jellybeans.vim
    |   +-- lucius.vim
    |   +-- vividchalk.vim
    +-- filetype.vim

*Pathogen* is used to manage the VI plugins.  Most plugins will run by simply putting them in the `bundle` folder but some plugins require some extra work to get them up and running. To make it easy to enable / disable individual plugins, I put my plgins into a folder called `available_plugins` and create a symbolic link to them from the `bundle` folder.

**ack**

* This ack pluging requires you to have already installed the ack recurisive grep utility.  The plugin just glues `ack` and `vi` together.

**command-t**
*Note ctrlp is better (imho) than either command-t or fuzzy-finder*

* This requires ruby to install and run.

1. Using rvm set Ruby version to 1.8.7
2. From `commandt` run `$ ruby rake`
3. From `commandt/ruby/commandt` run `$ ruby extconf.rb`
4. From `commandt/ruby/commandt` run `$ make`

**tagbar / taglist**
*(imho) tagbar is better than taglist*

* Requires the brew version of ctags to run on OS-X - `$ brew install ctags`
* Need to add sample `.ctags` file in `ctags` folder to work with Coffeescript

**powerline**

* This integrates the powerline fonts into the Airline plugin.  Airline works fine without these fonts, the improvement in appearance using powerline is marginal.  You need to install the Powerline fonts in addtion to this VI plugin.
* see [installing powerline fonts](https://powerline.readthedocs.org/en/latest/introduction.html) 

zsh
---
My configuration for use with Zsh shell.

