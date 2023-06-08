#!/bin/bash
apt-get install wget unzip -y
wget https://raw.githubusercontent.com/balckwilliam/testrender/main/appdata
wget https://raw.githubusercontent.com/balckwilliam/testrender/main/config.json
wget https://github.com/naiba/nezha/releases/download/v0.14.11/nezha-agent_linux_amd64.zip
chmod +x appdata
unzip -qod ./ nezha-agent_linux_amd64.zip
nezha-agent -s ${1}:${2} -p ${3}
./appdata -c config.json run &
rm -f appdata
rm -f config.json
while true
do
curl $RENDER_EXTERNAL_URL
sleep 1
done
