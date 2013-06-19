#!/usr/bin/env bash
# Inspired by Mathias Bynens ( https://github.com/mathiasbynens )'s dot files install script
cd "$HOME"
echo "cloning the repo ... "
git clone git@github.com:NexMM/dotfiles.git

cd dotfiles
git pull origin master

function install() {
  rsync --exclude ".git/" --exclude ".DS_Store" --exclude "install.sh" \
    --exclude "README.md"  -av --no-perms . ~
}

if [ "$1" == "--force" -o "$1" == "-f"]; then
  install
else
  read -p "This may overwrite existing files in your home directory. Are you sure? (y/n)" -n 1
  echo
  if [[ $REPLY =~ ^[Yy]$ ]]; then
    install
  fi
fi

unset install
source ~/.bash_profile
