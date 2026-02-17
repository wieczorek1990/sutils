#!/bin/sh

source ./bin/config.sh

/bin/mkdir -p $distribution_directory
for utility in src/python/*
do
  name=$(basename $utility)
  /bin/cp $utility/$name $distribution_directory
done
/usr/bin/tar -cJf $distribution $distribution_directory

