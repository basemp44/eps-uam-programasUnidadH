#!/bin/bash

cd $HOME/UnidadH

wget http://curl.haxx.se/download/curl-7.34.0.tar.gz
wget http://downloads.sourceforge.net/expat/expat-2.1.0.tar.gz
wget https://www.kernel.org/pub/software/scm/git/git-1.8.5.tar.gz

tar -xvf curl-7.34.0.tar.gz
tar -xvf expat-2.1.0.tar.gz
tar -xvf git-1.8.5.tar.gz

#curl
mkdir curl
cd curl-7.34.0
./configure --prefix=/$HOME/UnidadH/curl
make
make install
cd ..

#expat
mkdir expat
cd expat-2.1.0
./configure --prefix=/$HOME/UnidadH/expat
make
make install
cd ..

#git
mkdir git
cd git-1.8.5
./configure --prefix=/$HOME/UnidadH/git --with-curl=/$HOME/UnidadH/curl --with-expat=/$HOME/UnidadH/expat
make
make install
cd ..

#remove downloads
rm curl-7.34.0.tar.gz
rm expat-2.1.0.tar.gz
rm git-1.8.5.tar.gz

rm -rf curl-7.34.0
rm -rf expat-2.1.0
rm -rf git-1.8.5


