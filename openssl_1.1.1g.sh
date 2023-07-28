#!/bin/sh



sudo apt remove openssl

wget https://ftp.openssl.org/source/old/1.1.1/openssl-1.1.1g.tar.gz --no-check-certificate
tar zxvf openssl-1.1.1g.tar.gz
cd openssl-1.1.1g
./config
make
sudo make install


sudo rm -rf /usr/bin/openssl
sudo ln -s /usr/local/bin/openssl /usr/bin/openssl
sudo ldconfig
