#!/bin/bash

for word in `sed 's/#.*//g' brew-cask.txt | sed '/%[ \t]*$/d' | sed '/^$/d'` 
do
	brew cask list $word
	if [ $? -ne 0 ]
	then
		brew cask install $word --appdir=/Applications
	fi
done
