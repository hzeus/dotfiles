# Path to your oh-my-zsh configuration.
export ZSH=$HOME/.oh-my-zsh
export FUCHS_DEV=$HOME/Development/fuchs

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
export ZSH_THEME="robbyrussell"

export ANDROID_HOME=/opt/boxen/homebrew/opt/android-sdk

export RUBY_GC_MALLOC_LIMIT=50000000
#export RUBY_HEAP_MIN_SLOTS=500000
#export RUBY_FREE_MIN=50000

export EDITOR=/usr/bin/vim

export PGDATA=/opt/boxen/homebrew/var/postgres

# Oracle Development: ruby-oci8
export DYLD_LIBRARY_PATH=~/oracle/instantclient_11_2
export NLS_LANG=GERMAN_GERMANY.UTF8
#export NLS_COMP=LINGUISTIC
#export NLS_SORT=BINARY_CI

# Set to this to use case-sensitive completion
# export CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# export DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# export DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# export DISABLE_AUTO_TITLE="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(osx bundler rails git ruby github mix fu fs ee)

source $ZSH/oh-my-zsh.sh
#[[ -s $HOME/.rvm/scripts/rvm ]] && source $HOME/.rvm/scripts/rvm

# Customize to your needs...
homebrew=/usr/local/bin:/usr/local/sbin
export PATH=$homebrew:$PATH::/usr/bin:/bin:/usr/sbin:/sbin #:/usr/X11/bin

function restart_fuchs_vpn() {
  ssh hzeus@vpn1.zweitag.de "sudo /etc/init.d/racoon restart"
}

function zweitag_vpn() {
  open afp://192.168.44.7/Organisation
}

function vundle() {
  vim +BundleInstall +qall
}

alias gt='gittower -s .'
alias m='mvim'
alias gti=git
alias gh="open \`git remote -v | grep git@github | grep fetch | head -1 | cut -f2 | cut -d' ' -f1 | sed -e's/:/\//' -e 's/git@/http:\/\//' -e 's/\.git//'\`"

[ -f /opt/boxen/env.sh ] && source /opt/boxen/env.sh

#PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
#if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi
source /opt/boxen/homebrew/Cellar/chruby/0.3.8/share/chruby/chruby.sh
source /opt/boxen/homebrew/Cellar/chruby/0.3.8/share/chruby/auto.sh
