# dotfiles

* Intro
* Installation
* Usage
* Other software 

## Intro
Dotfiles of my pc and i need some softwares

## Installation
1. install brew
  `/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"` 
2. install mackup
  `brew install mackup`
3. git clone git@github.com:zcjava/dotfiles.git

That's all !

## Usage
1. ln -s ~/dotfiles/Mackup/.mackup.cfg  .mackup.cfg
2. ln -s ~/dotfiles/Mackup/.mackup .mackup 
3. mackup restore

That's all !

## Other software
The Follow:

### brew  brew cask
  
  `brew tap caskroom/cask`
  类似于ubuntu的apt-get, brew用来自动安装一些非界面的软件,brew cask 用来自动安装一些有界面的软件 

***

### idea
  `brew cask install intellij-idea`  
  java编辑器

### iterm2
  `brew cask install iterm2`  
  更丰富功能的terminal 
  `git clone https://github.com/mbadolato/iTerm2-Color-Schemes.git`  下载ubuntu 配色  

### youdao
  `brew cask install youdao`  
  有道翻译 

### evernote
  `brew cask isntall evernote`
   印象笔记
### mysql workbench
  `brew cask install mysqlworkbench`  

### cheatsheet
  `brew cask install cheatsheet`  
  显示当前程序快捷键列表的软件  

### shiftit
  `brew cask install shiftit`  
  窗口伸缩调整的软件，使用快捷键调整窗口大小更方便  

### istat menu
  `brew cask install istat-menus`  
  mac的状态显示(cpu memory disk)   
  version 5 的注册码为   
  9665-5955-6856-2071-0000

### vlc
  `brew cask install vlc`  
  视频播放软件  

### neteasemusic
  `brew cask install neteasemusic`  
  网易云音乐  

***


### vim
  `brew install vim`  
  mac vim版本比较低，安装最新版，已支持vim复制到剪切板  

### git
  `brew install git`  
  mac git版本比较低，安装最新版本
### ctags
  `brew install ctags`
  Tagbar of vim plugin need it 
### vim bundle
  `git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle`  
  `vim ~/.vimrc`   
  `:BundleInstall`  
  vim插件管理器，自动安装vim插件  
    其中YouCompleteMe,需要执行脚本下载第三方依赖包;
    `cd /Volumes/data/dotfiles/Mackup/.vim/bundle/YouCompleteMe/`   
    `git submodule update --init --recursive`   
    `brew install cmake`    
    `./install.sh --clang-completer`    
    `cd /Volumes/data/dotfiles/Mackup/.vim/bundle/tern_for_vim/ && npm install`    

     
### zsh
  `brew install zsh`  
  `vim /etc/shells`    
  `/usr/local/bin/zsh`   
  `chsh -s /usr/local/bin/zsh`  

### oh my zsh
  `sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"`  
  简化zsh配置的一个工具   

### zsh completions
  `brew install zsh-completions`  
  zsh代码补全  

### zsh-syntax-highlighting
   `brew install zsh-syntax-highlighting`  
   zsh语法高亮  

### autojump
  `brew install autojump`  
  可以很方便的跳转到以前访问过的目录  
  配置保存在 .zshrc 中，mackup 可以恢复配置  

### mackup
   `brew install mackup`  
   自动备份dotfiles的工具  
   `git clone git@github.com:zcjava/dotfiles.git`  
   `cp ~/dotfiles/Mackup/.mackup.cfg ~/`  
   `cp ~/dotfile`  
   `cp -r ~/dotfiles/Mackup/.mackup ~/`  
   `mackup restore`  
   备份了喜欢的字体,执行 install_fav_fonts.sh即可  


### alfred 
  `www.ifunmac.com`中下载破解版  
  提高生产效率的神器   

### emacs need lib
### emacs 's pdf-tools 

### emacs w3m
brew install w3m
