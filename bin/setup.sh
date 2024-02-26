#!/bin/sh

mkdir -p ../tmp
rm ../tmp/lieder.txt 2> /dev/null

cd ../src/lieder && for entry in $(ls *.tex); do
    echo "$entry" >> ../../tmp/lieder.txt
done
