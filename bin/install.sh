#!/bin/sh

source ./bin/config.sh

sudo /bin/mkdir -p "$prefix"
sudo /usr/bin/tar -xJf "$distribution" -C "$prefix/"
for program in $prefix/$distribution_directory*
do
  sudo /bin/ln -sf $program $prefix/
done
