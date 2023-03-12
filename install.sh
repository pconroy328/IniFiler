#!/bin/sh
make
sudo cp ./dist/Debug/GNU-Linux/libinifiler.a /usr/local/lib/.
sudo cp ./configIO.h /usr/local/include/.
sudo ldconfig -v
