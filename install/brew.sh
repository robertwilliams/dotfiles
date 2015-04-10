#!/bin/bash
# Install homebrew
if test ! $(which brew); then
  echo "Installing homebrew..."
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi
brew update
brew upgrade --all

brew tap homebrew/version

for word in `sed 's/#.*//g' brew.txt | sed '/%[ \t]*$/d' | sed '/^$/d'` 
do
	brew list $word
	if [ $? -ne 0 ]
	then
		brew install $word
	fi
done

brew cleanup

