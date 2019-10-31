#!/bin/bash
# homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# zsh
brew install zsh
chsh -s /bin/zsh
# oh my zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
perl -i -pe "s/ZSH_THEME=.*/ZSH_THEME=geoffgarside/g" ~/.zshrc
source ~/.zshrc
