#!/bin/sh


wget https://ftp.openssl.org/source/old/1.0.2/openssl-1.0.2d.tar.gz
tar xvf openssl-1.0.2d.tar.gz
cd openssl-1.0.2d
./config
make
sudo make install

sudo rm -rf /usr/bin/openssl
sudo ln -sf /usr/local/ssl/bin/openssl /usr/bin/openssl
sudo ldconfig
