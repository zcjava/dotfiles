export CLICOLOR=1
export TERM=xterm-256color
# export PS1="$(whoami)"
[[ -s $(brew --prefix)/etc/profile.d/autojump.sh ]] && . $(brew --prefix)/etc/profile.d/autojump.sh
alias emacs="/Applications/Emacs.app/Contents/MacOS/Emacs"
alias py="/usr/local/bin/python3"
alias python="/usr/local/bin/python3"
alias pip="/usr/local/bin/pip3"
alias tree="tree -N"
# export CLASSPATH=.:${JAVA_HOME}/lib/dt.jar:${JAVA_HOME}/lib/tools.jar
export PROMPT="%{$fg_bold[blue]%}$USER ${PROMPT}"
export GOPATH=$HOME/go
export PATH=$PATH:/usr/local/sbin:/usr/local/bin:~/Desktop/shell/bin
# export PYTHONPATH=$PYTHONPATH:/usr/local/lib/python3.7/site-packages/
