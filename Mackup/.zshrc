source ~/.zshenv
source ~/.bash_profile
[[ $TERM == "dumb" ]] && unsetopt zle && PS1='$ ' && return
PATH=$(pyenv root)/shims:$PATH
export PATH="/opt/homebrew/opt/node@14/bin:$PATH"
