#!/bin/sh



wget https://files.pythonhosted.org/packages/fd/76/3c7f726ed5c582019937f178d7478ce62716b7e8263344f1684cbe11ab3e/setuptools-45.0.0.zip --no-check-certificate
unzip setuptools-45.0.0.zip
sudo python2 ./setuptools-44.1.1/setup.py install

mkdir wheels
wget https://files.pythonhosted.org/packages/27/79/8a850fe3496446ff0d584327ae44e7500daf6764ca1a382d2d02789accf7/pip-20.3.4-py2.py3-none-any.whl --no-check-certificate
mv pip-20.3.4-py2.py3-none-any.whl wheels
sudo python2 ./wheels/pip-20.3.4-py2.py3-none-any.whl/pip install --no-index --find-links ./wheels/ pip --ignore-installed
