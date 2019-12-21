#!/bin/bash

echo Install BCM2835 libraries

wget http://www.airspayce.com/mikem/bcm2835/bcm2835-1.60.tar.gz
tar zxvf bcm2835-1.60.tar.gz
cd bcm2835-1.60
sudo ./configure
sudo make
sudo make check
sudo make install
cd ..
sudo rm -r bcm2835-1.60

echo Install apt deps

sudo apt update
sudo apt install wiringpi python3 python3-pip python3-numpy

echo Install pip deps

sudo pip3 install RPi.GPIO spidev Pillow
