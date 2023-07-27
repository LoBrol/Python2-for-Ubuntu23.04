#!/bin/sh


sudo apt update


# ----- INSTALLING NECESSARY PROGRAMS/LIBRARIES ---------------------
sudo apt install -y build-essential
sudo apt install -y gcc
sudo apt install -y zlib1g-dev
sudo apt install -y wget
sudo apt install -y curl
sudo apt install -y git
sudo apt install -y make


# ----- DOWNLOADING/BUILDING PYTHON ---------------------------------
wget https://www.python.org/ftp/python/2.7.9/Python-2.7.9.tgz
sudo tar xzf Python-2.7.9.tgz
cd Python-2.7.9
sudo ./configure --enable-optimization
sudo make altinstall
alias python2='python2.7' >> .bashrc
source ~/.bashrc


# ----- DOWNLOADING/INSTALLING PIP ----------------------------------
curl https://bootstrap.pypa.io/pip/2.7/get-pip.py --output get-pip.py
sudo python2 get-pip.py
