#!/bin/sh



sudo apt remove openssl

wget https://ftp.openssl.org/source/old/1.1.0/openssl-1.1.0l.tar.gz
tar xvf openssl-1.1.0l.tar.gz
cd openssl-1.1.0l
./config
make
sudo make install

sudo rm -rf /usr/bin/openssl
sudo ln -sf /usr/local/ssl/bin/openssl /usr/bin/openssl
sudo ldconfig
