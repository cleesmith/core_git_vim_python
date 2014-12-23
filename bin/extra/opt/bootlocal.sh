#!/bin/sh
# put other system startup commands here
chown tc:staff /home/tc
mkdir -p /home/tc/.local
chown tc:staff /home/tc/.local
sudo ln -sf /usr/local/bin/python2.7 /usr/bin/python
sudo ln -sf /usr/local/bin/python2.7 /usr/local/bin/python
sudo ln -sf /usr/local/bin/easy_install /usr/bin/easy_install

