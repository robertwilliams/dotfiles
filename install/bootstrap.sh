#!/usr/bin/env bash

cd "$(dirname "${BASH_SOURCE}")";

for i in .aliases .bash_profile .bash_prompt .bashrc .crontab .curlrc .editorconfig .exports .functions .gdbinit .gitattributes .gitconfig .gitignore .gvimrc .hgignore .hushlogin .inputrc .path .screenrc .vim .vimrc .wgetrc
do
    ln -sf ~/dotfiles/$i ~/$i
done
