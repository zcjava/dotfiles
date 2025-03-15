source ~/.zshenv
source ~/.bash_profile
[[ $TERM == "dumb" ]] && unsetopt zle && PS1='$ ' && return

