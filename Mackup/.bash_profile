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
export JAVA_HOME=$(/usr/libexec/java_home -v17)
#export GRADLE_HOME=/opt/homebrew/Cellar/gradle/8.0.2/
export GRADLE_USER_HOME=/Users/os/.m2/repository/
export PATH=$PATH:/Users/os/Desktop/shell/bin
export PATH="/opt/homebrew/opt/mysql@5.7/bin:$PATH"
export GITLAB_HOME=$HOME/data/docker_storage/gitlab
#export DOCKER_DEFAULT_PLATFORM=linux/arm64
