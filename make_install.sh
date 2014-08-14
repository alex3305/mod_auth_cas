#!/bin/sh
echo "Compiling and installing Apache 2.0-2.4 mod_auth_cas"

rm aclocal.m4
rm Makefile.in

aclocal && automake
./configure && make && sudo make install

echo ""
echo "Installed mod_auth_cas."
echo "You should find it in /usr/lib/apache2/modules/"