alias tm "tail -F /var/log/messages | colorize "
alias ts "sudo tail -F /var/log/security | colorize "
alias te "tail -F /var/log/exim/mainlog | colorize "
alias s screen -x
#alias mc    '(setenv LC_ALL "en_US.ISO8859-1" && /usr/local/bin/mc -s)'

alias h         history 25
alias j         jobs -l
alias la        ls -a
alias lf        ls -FA
alias ll        ls -lA

umask 22

set path = (/sbin /bin /usr/sbin /usr/bin /usr/games /usr/local/sbin /usr/local/bin /usr/X11R6/bin $HOME/bin)

setenv  BLOCKSIZE M 
#   export BLOCKSIZE
setenv  EDITOR vim 
#    export EDITOR
setenv  PAGER more
#    export PAGER
#setenv DISPLAY win:0.0
#     export DISPLAY
setenv PKGREPOSITORY /usr/ports/packages
set history=700
set savehist=(700 merge)
set time=5
set prompt="{`whoami`@`hostname | sed 's/\..*//'`:!} "
#set prompt="{`whoami`@`hostname`:!} "
#set watch=(1 any any)
#set who="%n has %a %1 from %M."
unset autologout
bindkey "^W" backward-delete-word
bindkey -k up history-search-backward
bindkey -k down history-search-forward

switch ($TERM)
    case "xterm*":
        set host=`hostname`
		  set user=`whoami`
		  set pwd=`pwd`		
		  printf "\033]0;${user}@${host}\007"
        breaksw
    default:
        breaksw
endsw
