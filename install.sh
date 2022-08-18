#!/bin/sh
make
sudo cp /tmp/IniFiler/dist/Debug/GNU-Linux/libinifiler.a /usr/local/lib/.
sudo cp /tmp/IniFiler/configIO.h /usr/local/include/.
sudo ldconfig -v
