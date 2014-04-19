# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/leon/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

setopt HIST_IGNORE_DUPS
autoload -U colors && colors

unsetopt beep
bindkey ";5D" backward-word
bindkey ";5C" forward-word

# allow approximate
zstyle ':completion:*' completer _complete _match _approximate
zstyle ':completion:*:match:*' original only
zstyle ':completion:*:approximate:*' max-errors 1 numeric


alias ls='ls --color=auto'
alias grep='grep --color=auto'

#PROMPT=$(echo '%{\033[32;1m%}%n@%m %{$fg[red]%} $%{\033[0m%} ')
PROMPT="%{$fg_bold[yellow]%}%n%{$reset_color%}@%{$fg[yellow]%}%m %{$fg_bold[blue]%}%#%{$reset_color%} "
#RPROMPT=$(echo '[%{\033[33m%}%~%{\033[0m%}] [%{\033[32m%}%*%{\033[0m%}]')
RPROMPT="[%{$fg_bold[blue]%}%~%{$reset_color%}] %*"

if [ "$SHELL" = '/bin/zsh' ]
then
    case $TERM in
         rxvt|*term)
         precmd() { print -Pn "\e]0;%m:%~\a" }
         preexec () { print -Pn "\e]0;$1\a" }
         ;;
    esac
fi

export PATH="$PATH:/opt/android-sdk/tools:/opt/android-sdk/platform-tools"
export EDITOR=nano
export _JAVA_OPTIONS='-Dawt.useSystemAAFontSettings=on'
export WORKON_HOME=~/.virtualenvs
[ -e "/usr/local/bin/virtualenvwrapper.sh" ] && . /usr/local/bin/virtualenvwrapper.sh



