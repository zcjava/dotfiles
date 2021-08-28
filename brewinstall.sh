#!/bin/bash

# brew install 国外源太慢。使用清华源
export HOMEBREW_BREW_GIT_REMOTE="https://mirrors.tuna.tsinghua.edu.cn/git/homebrew/brew.git"
export HOMEBREW_CORE_GIT_REMOTE="https://mirrors.tuna.tsinghua.edu.cn/git/homebrew/homebrew-core.git"
git clone --depth=1 https://mirrors.tuna.tsinghua.edu.cn/git/homebrew/install.git brew-install
/bin/bash brew-install/install.sh
rm -rf brew-install
test -r ~/.bash_profile && echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> ~/.bash_profile
test -r ~/.zprofile && echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> ~/.zprofile
# brew end


brew install mackup
brew install ctags
brew install vim
brew install zsh
brew info git
brew info vim
brew install zsh-completions
brew install zsh-syntax-highlighting
brew install autojump
brew install telnet
brew install openjdk@11 


# emacs macos brew 安装太慢，dmg自行下载,cp 到  ~/Library/Caches/Homebrew/Cask/
# 在执行brew install --cask emacs

