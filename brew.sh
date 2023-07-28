#!/bin/sh



sudo apt update
sudo apt install -y build-essential
sudo apt install -y git

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
(echo; echo 'eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"') >> /home/$USER/.bashrc
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

brew install pyenv
pyenv install 2.7.18
pyenv global 2.7.18
PATH=$(pyenv root)/shims:$PATH
