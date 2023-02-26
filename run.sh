#!/bin/bash

you_domian="xiongzhanzhang.xyz"
you_passwd="password_placeholder"

sed -i 's/xiongzhanzhang.xyz/${you_domian}/g' ./caddy.json
sed -i 's/xiongzhanzhang.xyz/${you_domian}/g' ./nps.conf
sed -i 's/password_placeholder/${you_passwd}/g' ./nps.conf
cp nps.conf ./conf/nps.conf

mkdir -p ~/share
mkdir -p ~/logs

./caddy stop
nohup ./caddy run --config ./caddy.json > ~/logs/caddy.log 2>&1 &

./nps stop
nohup ./nps > ~/logs/nps.log 2>&1 &