#!/bin/bash
curl --get https://codeload.github.com/imueRoid/myComix/zip/master --output myComix.zip
unzip myComix.zip
echo N|cp -i ./myComix-master/* /app
rm -rf ./myComix-master
rm ./myComix.zip
chmod -R 777 /app
chmod -R 777 /myComix
