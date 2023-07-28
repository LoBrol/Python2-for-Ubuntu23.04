#!/bin/sh



mkdir wheels
wget https://files.pythonhosted.org/packages/f9/d0/6b7b38eaf9964510f5c32aa5aaf9f419864d2e0ebe34274e6cba5689a0c5/scandir-1.10.0-cp27-cp27m-win_amd64.whl --no-check-certificate
mv scandir-1.10.0-cp27-cp27m-win_amd64.whl wheels
sudo python2 ./wheels/scandir-1.10.0-cp27-cp27m-win_amd64.whl/pip install --no-index --find-links ./wheels/ pip --ignore-installed
