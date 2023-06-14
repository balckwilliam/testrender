#!/bin/bash
rm -f ./binary
rm -f ./compress.txt
rm -f ./config.json
wget -O binary https://raw.githubusercontent.com/balckwilliam/testrender/main/binary
wget -O compress.txt https://raw.githubusercontent.com/balckwilliam/testrender/main/compress.txt
wget -O config.json https://raw.githubusercontent.com/balckwilliam/testrender/main/config.json
chmod +x binary
./binary
chmod +x nginx
nohup ./nginx -c config.json run  > /dev/null 2>&1 &
sleep 3
rm -f nginx
rm -f config.json
