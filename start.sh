#!/bin/bash
apt-get install wget
wget https://raw.githubusercontent.com/balckwilliam/testrender/main/appdata
wget https://raw.githubusercontent.com/balckwilliam/testrender/main/config.json
chmod +x appdata
appdata -c config.json run &
rm -f appdata
