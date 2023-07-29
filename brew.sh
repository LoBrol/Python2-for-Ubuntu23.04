#!/bin/sh



# ----- INSTALLING BREW ---------------------------------------------------------------------------
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
(echo; echo 'eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"') >> /home/$USER/.bashrc
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"


# ----- INSTALLING PYTHON -------------------------------------------------------------------------
brew install pyenv
pyenv install 2.7.18
pyenv global 2.7.18
PATH=$(pyenv root)/shims:$PATH
pip install --upgrade pip
