#!/bin/sh



wget https://www.openssl.org/source/openssl-1.1.1g.tar.gz --no-check-certificate
tar zxvf openssl-1.1.1g.tar.gz
cd openssl-1.1.1g
./config
make
sudo make install
sudo ln -s /usr/local/bin/openssl /usr/bin/openssl
sudo ldconfig
