#!/bin/bash

for word in `sed 's/#.*//g' npm.txt | sed '/%[ \t]*$/d' | sed '/^$/d'` 
do
    sudo npm install -g $word
done
