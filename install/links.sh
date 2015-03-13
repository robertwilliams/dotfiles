#!/bin/bash

for word in `sed 's/#.*//g' urls.txt | sed '/%[ \t]*$/d' | sed '/^$/d'` 
do
	open $word
done
