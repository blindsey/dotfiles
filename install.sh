#!/bin/bash

DIR=`dirname $0`
FILES=".gitconfig .gemrc .vimrc .jshintrc"
for F in $FILES; do
  mv ~/$F ~/$F.bak
  ln -s "$DIR/$F" ~/$F
done
