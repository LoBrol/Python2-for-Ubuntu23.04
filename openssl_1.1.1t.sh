#!/bin/sh



sudo apt remove openssl
sudo rm -rf /usr/include/openssl

wget https://ftp.openssl.org/source/old/1.1.1/openssl-1.1.1t.tar.gz --no-check-certificate
tar zxvf openssl-1.1.1t.tar.gz
cd openssl-1.1.1t
./config
make
sudo make install


sudo rm -rf /usr/bin/openssl
sudo ln -s /usr/local/bin/openssl /usr/bin/openssl
sudo ldconfig
