#!/bin/bash

# optimize
ulimit -n 8192

# config DNS64
echo -e "nameserver 2001:67c:2b0::4\nnameserver 2001:67c:2b0::6" > /etc/resolv.conf

# install caddy
curl -o ./caddy -L "https://caddyserver.com/api/download?os=linux&arch=amd64&p=github.com%2Fcaddy-dns%2Fcloudflare&p=github.com%2Fmholt%2Fcaddy-l4&idempotency=8297297083408"
chmod +x ./caddy

# install nps
wget https://github.com/cnlh/nps/releases/download/v0.26.1/linux_amd64_server.tar.gz
tar -zxvf linux_amd64_server.tar.gz

# init log rotate
sed -i "s@home@$HOME@g" ./vps_log.conf
cp ./vps_log.conf /etc/logrotate.d