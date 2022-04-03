export CLICOLOR=1
export LC_ALL=zh_CN.UTF-8
export TERM=xterm-256color
# export PS1="$(whoami)"
eval "$(/opt/homebrew/bin/brew shellenv)"
#autojump
[ -f $(brew --prefix)/etc/profile.d/autojump.sh ] && . $(brew --prefix)/etc/profile.d/autojump.sh
autoload -U compinit && compinit
#autojump
HISTFILESIZE=2000
alias python="python3"
alias py="python3"
alias pip="pip3"
alias tree="tree -N"
#export GOPATH=$HOME/go
#export JAVA_HOME=/Library/Java/JavaVirtualMachines/openjdk-11.jdk/Contents/Home/
export PATH=$PATH:/Users/os/Desktop/shell/bin
