#!/bin/bash
YUI=/usr/local/bin/yuicompressor

if [ ! -d Source ] ; then
  echo "Source folder is missing."
  exit 1
fi

if [ ! -d Compressed ] ; then
  echo "Creating Compressed folder."
  mkdir Compressed
else
  echo "Recreating Compressed folder."
  rm -rf Compressed
  mkdir Compressed
fi

cd Source

echo "Compressing Quickie.js."
java -jar $YUI -o ../Compressed/Quickie.js Quickie.js