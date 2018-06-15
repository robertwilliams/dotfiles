#!/bin/bash

export HOMEBREW_CASK_OPTS='--appdir=/Applications --with-default-names'

# Install homebrew
if test ! $(which brew); then
  echo "Installing homebrew..."
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

brew update
brew upgrade

brew tap Homebrew/bundle
brew bundle
brew bundle cleanup
mas upgrade

brew cleanup
brew cask cleanup

curl -L -s https://gist.github.com/Ea87/46401a96df31cd208a87/raw/gradle-tab-completion.bash \
     -o ~/bin/gradle-tab-completion.bash --create-dirs
npm install -g  yo
