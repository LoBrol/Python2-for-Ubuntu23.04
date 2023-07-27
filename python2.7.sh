#!/bin/sh



wget https://www.python.org/ftp/python/2.7.9/Python-2.7.9.tgz
tar xzf Python-2.7.9.tgz
cd Python-2.7.9
./configure --enable-optimizations --includedir=/usr/include/tirpc/
make altinstall


# cd ~
# echo alias python2='python2.7' >> .bashrc
# source ~/.bashrc
