# Path to your oh-my-zsh configuration.
export ZSH=$HOME/.oh-my-zsh
export FUCHS_DEV=$HOME/Development/fuchs
export ZT_DEPLOY_USER=heiko-zeus

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
export ZSH_THEME="robbyrussell"

export ANDROID_HOME=~/Library/Android/sdk
export PATH=${PATH}:${ANDROID_HOME}/tools
export PATH=${PATH}:${ANDROID_HOME}/platform-tools

export RUBY_GC_MALLOC_LIMIT=50000000
#export RUBY_HEAP_MIN_SLOTS=500000
#export RUBY_FREE_MIN=50000

export EDITOR=/usr/bin/vim

export PGDATA=/opt/boxen/homebrew/var/postgres

# Oracle Development: ruby-oci8
export PATH=~/oracle/instantclient_11_2:$PATH
#export DYLD_LIBRARY_PATH=~/oracle/instantclient_11_2
export OCI_DIR=$(brew --prefix)/lib
export NLS_LANG=GERMAN_GERMANY.UTF8
#export NLS_COMP=LINGUISTIC
#export NLS_SORT=BINARY_CI
#
# https://bugs.chromium.org/p/chromedriver/issues/detail?id=1552#c43
export LANG=en_US.UTF-8

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
plugins=(osx bundler rails git ruby mix fu fs ee)

source $ZSH/oh-my-zsh.sh
#[[ -s $HOME/.rvm/scripts/rvm ]] && source $HOME/.rvm/scripts/rvm

# Customize to your needs...
homebrew=/usr/local/bin:/usr/local/sbin
export PATH=$homebrew:$PATH::/usr/bin:/bin:/usr/sbin:/sbin #:/usr/X11/bin
fpath=(/usr/local/share/zsh-completions $fpath)

function vundle() {
  vim +BundleInstall +qall
}

function fudb_tunnel() {
  ssh -L 8521:10.129.2.77:1521 -t customers
}

function fudbs_tunnel() {
  ssh -L 8521:126.210.0.25:1521 -t customers
}

function fudbs_staging_tunnel() {
  ssh -L 8521:126.210.0.26:1521 -t customers
}

function erpp_tunnel() {
  ssh -L 8521:10.129.2.86:1521 -t customers
}

function prism_tunnel() {
  ssh -L 8521:10.129.2.95:1521 -t prism
}

function pksp_tunnel() {
  ssh -L 8521:10.129.2.83:1521 -t customers
}

function erpt_tunnel() {
  ssh -L 8521:10.129.2.85:1521 -t customers-staging
}

function essp_tunnel() {
  ssh -L 8521:10.129.2.83:1521 -t customers-staging
}


function deploy_production() {
  git checkout master
  git pull
  git clean-merged
  git checkout production
  git pull
  git merge master
  git push
  cap production deploy:migrations
}

function deploy_staging() {
  git push
  git checkout staging
  git pull
  git merge -
  git push
  cap staging deploy:migrations
}

alias gt='gittower -s .'
alias m='mvim'
alias gti=git
alias gh="hub browse"
alias pull="hub pull-request"

[ -f /opt/boxen/env.sh ] && source /opt/boxen/env.sh

#PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
#if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi
#source /usr/local/share/chruby/chruby.sh
#source /usr/local/share/chruby/auto.sh
eval "$(rbenv init -)"
