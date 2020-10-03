#!/bin/bash
apk update
apk upgrade
curl --get https://codeload.github.com/imueRoid/myComix/zip/master --output myComix.zip
unzip myComix.zip
echo N|cp -i ./myComix-master/* /app
rm -rf ./myComix-master
rm ./myComix.zip
chmod -R 777 /app
