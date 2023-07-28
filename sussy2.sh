#!/bin/sh





# new openssl install
wget https://www.openssl.org/source/openssl-1.1.1a.tar.gz
tar xzf openssl-1.1.1a.tar.gz
cd openssl-1.1.1a
./config shared --prefix=/usr/local/
make
sudo make install





# Python install script
export LDFLAGS="-L/usr/local/lib/"
export LD_LIBRARY_PATH="/usr/local/lib/"
export CPPFLAGS="-I/usr/local/include -I/usr/local/include/openssl"

apt-get update
apt-get install build-essential checkinstall -y
apt-get install libreadline-gplv2-dev libncursesw5-dev libssl-dev libsqlite3-dev tk-dev libgdbm-dev libc6-dev libbz2-dev -y

cd /home/ubuntu/Download
wget https://www.python.org/ftp/python/2.7.18/Python-2.7.18.tgz
tar xzf Python-2.7.18.tgz
cd Python-2.7.18 
./configure --prefix=/usr/local/ 
make
sudo make install
