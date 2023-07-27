#!/bin/sh


wget https://www.openssl.org/source/old/1.1.1/openssl-1.1.1t.tar.gz
tar zxvf openssl-1.1.1g.tar.gz
cd openssl-1.1.1g
./config --prefix=/home/ubuntu/openssl --openssldir=/home/ubuntu/openssl no-ssl2
make
sudo make install
cd ~

echo export PATH=$HOME/openssl/bin:$PATH >> .bashrc
echo export LD_LIBRARY_PATH=$HOME/openssl/lib >> .bashrc
echo export LC_ALL="en_US.UTF-8" >> .bashrc
echo export LDFLAGS="-L /home/ubuntu/openssl/lib -Wl,-rpath,/home/ubuntu/openssl/lib" >> .bashrc
source .bashrc
./.bashrc
