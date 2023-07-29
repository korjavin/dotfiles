DEBIAN_PREVENT_KEYBOARD_CHANGES="yes"
# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

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
plugins=(history-substring-search gitfast last-working-dir sudo docker golang screen dotenv z tmux safe-paste kubectl) # ssh-agent)

source $ZSH/oh-my-zsh.sh


# Customize to your needs...
PATH=/usr/local/go/bin:$PATH:/usr/sbin:/sbin:~/Projects/go/bin/:~/bin:
export EDITOR=nvim

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

alias t='tmux a'
alias tt='tmux'

alias tm='tail -f /var/log/messages'
alias ts='tail -f /var/log/daemon.log'
alias taa='sudo tail -f /var/log/auth.log'

export GOPATH=/home/iv/Projects/go
#export GOROOT=/usr/local/go
# alias gop='GOPATH=/home/iv/Projects/go:`pwd`'
alias cdg='cd /home/iv/Projects/go/src'
export cdg="/home/iv/Projects/go/src"
alias cdp='cd /home/iv/Projects/go/src/g.3pm.ai'
export cdp="/home/iv/Projects/go/src/g.3pm.ai"
alias cc= "printf '\033[2J\033[3J\033[1;1H'"
#
dbus-update-activation-environment --all

#alias vimfix=git diff --name-only | uniq | xargs $EDITOR
ZSH_DOTENV_FILE=.dotenv

export GO11MODULE=on
export GOPRIVATE=g.3pm.ai
export GOFLAGS="-mod=vendor"

bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down
bindkey "^[[H" beginning-of-line
bindkey "^[[F" end-of-line

setopt HIST_FIND_NO_DUPS
# setopt HISTORY_SUBSTRING_SEARCH_FUZZY
export HISTSIZE=2000000
setopt HIST_REDUCE_BLANKS
# source <(kaf completion zsh)
#
#
# alias vim=nvim

eval "$(starship init zsh)"
