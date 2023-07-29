#!/bin/sh



pyenv install 2.7.18
pyenv global 2.7.18
PATH=$(pyenv root)/shims:$PATH

pip install --upgrade pip
