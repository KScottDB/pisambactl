#!/bin/bash

echo == Install BCM2835 libraries ==

wget http://www.airspayce.com/mikem/bcm2835/bcm2835-1.60.tar.gz
tar zxvf bcm2835-1.60.tar.gz
cd bcm2835-1.60
./configure
make; make check
sudo make install
cd ..
rm -r bcm2835-1.60
rm bcm2835-1.60.tar.gz

echo == Install apt deps ==

sudo apt update; sudo apt install -y \
	wiringpi python3 python3-pip python3-numpy

echo == Install pip deps ==

sudo pip3 install RPi.GPIO spidev Pillow

echo == Done ==
