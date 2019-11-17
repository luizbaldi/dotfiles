#!/usr/bin/env bash

echo "\nPreparing Baldi's workstation..\n"

echo "\nInstalling Homebrew..."
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

echo "\nInstalling zsh..."
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

echo "\nUpdating Brew and Installing Git..."
brew update && brew install git

echo "\nDefining git setup..."
git config --global user.name "Baldi"
git config --global user.email baldilp@gmail.com

echo "\nInstalling Node and NPM..."
brew install node

echo "Everything's ready, hurray!"

exit 0
