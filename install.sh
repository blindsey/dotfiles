#!/bin/bash

cd `dirname $0`
DIR=`pwd`

FILES="gitconfig gemrc vimrc jshintrc"
for F in $FILES; do
  if [ -f ~/.$F ]; then
    mv ~/.$F ~/.$F.bak
  fi
  ln -sf "$DIR/$F" ~/.$F
done

if [ -d "~/.vim" ]; then
  echo "Skipping vim pathogen install"
  exit 0
fi

mkdir -p ~/.vim/autoload ~/.vim/bundle
curl -Sso ~/.vim/autoload/pathogen.vim https://raw.github.com/tpope/vim-pathogen/master/autoload/pathogen.vim

cd ~/.vim/bundle
git clone https://github.com/scrooloose/syntastic.git
git clone https://github.com/puppetlabs/puppet-syntax-vim.git
