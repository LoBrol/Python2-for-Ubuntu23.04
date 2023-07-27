#!/bin/sh



wget https://www.python.org/ftp/python/2.7.9/Python-2.7.9.tgz
tar xzf Python-2.7.9.tgz
cd Python-2.7.9
./configure --enable-optimizations --includedir=/usr/include/tirpc/
make
sudo make install


sudo ln -s /usr/local/bin/python2.7 /usr/bin/python2
sudo ldconfig
