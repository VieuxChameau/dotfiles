# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi


#
# enable bash_aliases by uncom the next 3 lines GU 12/1/2008
#
#
if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

#Git
source ~/.git-prompt.sh
source ~/.git-completion.sh



export EDITOR=emacs


export GIT_PS1_SHOWDIRTYSTATE=true
export GIT_PS1_SHOWSTASHSTATE=true
export GIT_PS1_SHOWUNTRACKEDFILES=true
export GIT_PS1_SHOWUPSTREAM="verbose"

#export PS1="[\u@\h \w]$ "
export PS1='[\[\033[1;35m\]\w$(__git_ps1 " \[\033[1;34m\](%s)")\[\033[0m\]]\$ '


export FIGNORE=.svn

export LD_LIBRARY_PATH=/usr/local/lib:$LD_LIBRARY_PATH


function extract () {
    if [ -f $1 ] ; then
      case $1 in
        *.tar.bz2)   tar xjf $1     ;;
        *.tar.gz)    tar xzf $1     ;;
        *.bz2)       bunzip2 $1     ;;
        *.rar)       unrar e $1     ;;
        *.gz)        gunzip $1      ;;
        *.tar)       tar xf $1      ;;
        *.tbz2)      tar xjf $1     ;;
        *.tgz)       tar xzf $1     ;;
        *.zip)       unzip $1       ;;
        *.Z)         uncompress $1  ;;
        *.7z)        7z x $1        ;;
        *)     echo "'$1' cannot be extracted via extract()" ;;
         esac
     else
         echo "'$1' is not a valid file"
     fi
}


function mcd() {
  mkdir -p "$1" && cd "$1";
}
