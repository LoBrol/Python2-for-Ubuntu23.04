#!/bin/sh


export LDFLAGS="-L/path/to/openssl/lib/ -L/path/to/openssl/lib64/"
export LD_LIBRARY_PATH="/path/to/openssl/lib/:/path/to/openssl/lib64/"
export CPPFLAGS="-I/path/to/openssl/include -I/path/to/openssl/include/openssl"
./configure #--prefix=/path/to/custom/python/
make
make install
