#!/bin/bash

cd `dirname $0`
DIR=`pwd`
echo $DIR

FILES="gitconfig gemrc vimrc jshintrc"
for F in $FILES; do
  if [ -f ~/.$F ]; then
    mv ~/.$F ~/.$F.bak
  fi
  ln -sf "$DIR/$F" ~/.$F
done
