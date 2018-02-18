DEBIAN_PREVENT_KEYBOARD_CHANGES="yes"
# Path to your oh-my-zsh configuration.
ZSH=$HOME/Projects/oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="fishy"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

DISABLE_CORRECTION="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(history-substring-search gitfast last-working-dir sudo symfony systemd docker go cpv screen)

source $ZSH/oh-my-zsh.sh


# Customize to your needs...
PATH=/usr/local/go/bin:$PATH:~/bin:/usr/sbin:/sbin:~/Projects/go/bin/
export EDITOR=vim

#bindkey "^N" history-search-forward
#bindkey "^P" history-search-backward
#
#bindkey "^OA" history-search-forward
#bindkey "^OB" history-search-backward

#bindkey  '^P' up-line-or-history
#bindkey  '^N' down-line-or-history
##bindkey '^[[A' history-beginning-search-backward
#bindkey '^[[A' up-line-or-history-beginning-search
##bindkey '^[[B' history-beginning-search-forward
#bindkey '^[[B' down-line-or-history-beginning-search
#bindkey '^U' kill-region
bindkey '^W' backward-kill-word
WORDCHARS='/.-_:'

case $TERM in
     xterm* | rxvt)
           precmd(){print -Pn "\e]0;%n@%m: %~\a"}
            ;;
    esac

setopt HIST_IGNORE_SPACE

export CDPATH=.:~

bindkey '^Xe' edit-command-line

alias ss='screen'
alias s='screen -x'
alias sw='screen -wipe'

alias tm='tail -f /var/log/messages'
alias ts='tail -f /var/log/daemon.log'
alias ta='tail -f /var/log/all.log'
alias taa='tail -f /var/log/auth.log'
alias te='tail -f /var/log/exim4/mainlog'

# added by travis gem
[ -f /home/iv/.travis/travis.sh ] && source /home/iv/.travis/travis.sh
export GOPATH=/home/iv/Projects/go
