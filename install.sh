#!/bin/sh


sudo apt update


# ----- INSTALLING NECESSARY PROGRAMS/LIBRARIES ---------------------
sudo apt install -y build-essential
sudo apt install -y openssl
# sudo apt install -y libssl-dev
# sudo apt install -y zlib1g-dev
sudo apt install -y libreadline-dev libncursesw5-dev libssl-dev libsqlite3-dev tk-dev libgdbm-dev libc6-dev libbz2-dev libncurses5-dev libnss3-dev libffi-dev zlib1g-dev libntirpc-dev
sudo apt install -y gcc
sudo apt install -y wget
sudo apt install -y curl
sudo apt install -y git
sudo apt install -y make


# ----- DOWNLOADING/BUILDING PYTHON ---------------------------------
wget https://www.python.org/ftp/python/2.7.9/Python-2.7.9.tgz
tar xzf Python-2.7.9.tgz
cd Python-2.7.9
./configure --enable-optimizations --includedir=/usr/include/tirpc/
make altinstall
#make
#make install
alias python2='python2.7' >> .bashrc
source ~/.bashrc


# ----- DOWNLOADING/INSTALLING PIP ----------------------------------
curl https://bootstrap.pypa.io/pip/2.7/get-pip.py --output get-pip.py
python2.7 get-pip.py
