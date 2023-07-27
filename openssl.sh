#!/bin/sh



wget https://www.openssl.org/source/old/openssl-1.0.2d.tar.gz --no-check-certificate
tar zxvf openssl-1.0.2d.tar.gz
cd openssl-1.0.2d
./config
make
sudo make install
sudo ln -s /usr/local/bin/openssl /usr/bin/openssl
sudo ldconfig
