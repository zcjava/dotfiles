export CLICOLOR=1
export LC_ALL=zh_CN.UTF-8
export TERM=xterm-256color
# export PS1="$(whoami)"
eval "$($(brew --prefix)/bin/brew shellenv)"
#autojump
[ -f $(brew --prefix)/etc/profile.d/autojump.sh ] && . $(brew --prefix)/etc/profile.d/autojump.sh
autoload -U compinit && compinit
#autojump
alias emacs="/Applications/Emacs.app/Contents/MacOS/Emacs"
alias python="/usr/bin/python3"
alias py="python"
alias pip="/usr/bin/pip3"
alias tree="tree -N"
export GOPATH=$HOME/go
export JAVA_HOME=/Library/Java/JavaVirtualMachines/openjdk-11.jdk/Contents/Home/
# export CLASSPATH=.:${JAVA_HOME}/lib/dt.jar:${JAVA_HOME}/lib/tools.jar
# export PROMPT="%{$fg_bold[blue]%}$USER ${PROMPT}"

#export PATH=$PATH:/usr/local/sbin:/usr/local/bin:~/Desktop/shell/bin
#export PATH=/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/Users/os/Desktop/shell/bin
export PATH=$PATH:/Users/os/Desktop/shell/bin
# export PYTHONPATH=$PYTHONPATH:/usr/local/lib/python3.7/site-packages/
