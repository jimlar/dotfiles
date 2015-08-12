# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="candy"
#ZSH_THEME="aussiegeek"


# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
#COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Example format: plugins=(rails git textmate ruby lighthouse)

# pip django
plugins=(git git-flow github svn ruby gem rails rvm ssh-agent)

zstyle :omz:plugins:ssh-agent agent-forwarding on
zstyle :omz:plugins:ssh-agent id_rsa id_kth_git

source $ZSH/oh-my-zsh.sh

# Turn off autocorrect
unsetopt correct_all

export SPLUNK_HOME=/opt/splunk

# Customize to your needs...
export PATH=$HOME/bin:/usr/local/bin:/usr/bin:/bin:/usr/local/sbin:/usr/sbin:/sbin:/opt/java/bin:/opt/java/db/bin:/opt/java/jre/bin:/usr/bin/vendor_perl:/usr/bin/core_perl:$HOME/.rvm/bin:$HOME/bin/play:$HOME/bin/flume/bin:$HOME/bin/nodejs/bin:$PATH

#source /etc/profile.d/apache-ant.sh

alias open=xdg-open
alias emacs='emacs -nw'
alias dc=docker-compose

export FLUME_CONF_DIR=/home/jimmy/bin/flume/conf

export EDITOR='emacs -nw'
export BROWSER=chromium

# Python virtual env
export VIRTUALENVWRAPPER_VIRTUALENV=/usr/bin/virtualenv
export VIRTUALENVWRAPPER_PYTHON=/usr/bin/python
export WORKON_HOME=$HOME/.virtualenvs
source /usr/bin/virtualenvwrapper.sh

#source /usr/local/share/chruby/chruby.sh

# Autoenv
[[ -f ~/.autoenv/activate.sh ]] && source ~/.autoenv/activate.sh
