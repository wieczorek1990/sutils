#!/bin/sh

source ./bin/config.sh

for utility in src/python/*
do
  name=$(basename $utility)
  sudo /bin/rm -f $prefix/$name
done
