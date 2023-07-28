#!/bin/sh



wget https://www.python.org/ftp/python/2.7.18/Python-2.7.18.tgz --no-check-certificate
tar xzf Python-2.7.18.tgz
cd Python-2.7.18

wget https://gist.githubusercontent.com/rkitover/2d9e5baff1f1cc4f2618dee53083bd35/raw/7f33fcf5470a9f1013ac6ae7bb168368a98fe5a0/python-2.7.14-custom-static-openssl.patch
git apply python-2.7.14-custom-static-openssl.patch

./configure --enable-optimizations --includedir=/usr/include/tirpc/ --with-openssl-dir=/usr/local/ssl --disable-option-checking
make
sudo make install


sudo ln -s /usr/local/bin/python2.7 /usr/bin/python2
sudo ln -s /usr/local/bin/python2.7 /usr/bin/python
sudo ldconfig
