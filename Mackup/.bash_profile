export CLICOLOR=1
export TERM="xterm-color"
# export PS1="$(whoami)"
[[ -s $(brew --prefix)/etc/profile.d/autojump.sh ]] && . $(brew --prefix)/etc/profile.d/autojump.sh
alias emacs="/Applications/Emacs.app/Contents/MacOS/Emacs"
alias py="/usr/local/bin/python3"
# export CLASSPATH=.:${JAVA_HOME}/lib/dt.jar:${JAVA_HOME}/lib/tools.jar
export PROMPT="%{$fg_bold[blue]%}$USER ${PROMPT}"
export PATH=$PATH:/usr/local/sbin:~/data/shell/bin
