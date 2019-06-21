export CLICOLOR=1
export TERM="xterm-color"
# export PS1="$(whoami)"
[[ -s $(brew --prefix)/etc/profile.d/autojump.sh ]] && . $(brew --prefix)/etc/profile.d/autojump.sh
alias emacs="/Applications/Emacs.app/Contents/MacOS/Emacs"
alias py="/usr/local/bin/python3"
alias tree="tree -N"
# export CLASSPATH=.:${JAVA_HOME}/lib/dt.jar:${JAVA_HOME}/lib/tools.jar
export PROMPT="%{$fg_bold[blue]%}$USER ${PROMPT}"
export GOPATH=$HOME/go
export PATH=$PATH:/usr/local/sbin:~/data/shell/bin:$GOPATH/bin:/usr/local/opt/postgresql@9.4/bin:/usr/local/opt/mysql@5.5/bin

