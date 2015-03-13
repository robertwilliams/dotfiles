#!/bin/bash

# Install gvm
curl -s get.gvmtool.net | bash
source ~/.gvm/bin/gvm-init.sh

gvm selfupdate

for word in `sed 's/#.*//g' gvm.txt | sed '/%[ \t]*$/d' | sed '/^$/d'` 
do
	gvm install $word
done
