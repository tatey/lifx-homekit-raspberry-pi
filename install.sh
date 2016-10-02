#!/bin/sh
set -e

NODE_VERSION="v6.7.0"

sudo apt-get update
sudo apt-get install build-essential libavahi-compat-libdnssd-dev git-core

cd $HOME
curl -O https://nodejs.org/dist/$NODE_VERSION/node-$NODE_VERSION-linux-armv7l.tar.gz
tar -zxf node-$NODE_VERSION-linux-armv7l.tar.gz
sudo cp -R node-$NODE_VERSION-linux-armv7l/* /usr/local/

sudo npm install -g npm homebridge homebridge-lifx-lan

sudo cat <<-EOF > homebridge.service
[Unit]
Description=homebridge
After=network.target

[Service]
Restart=on-failure
RestartSec=10
User=pi
ExecStart=/usr/local/lib/node_modules/homebridge/bin/homebridge

[Install]
WantedBy=multi-user.target
EOF

sudo mv homebridge.service /lib/systemd/system/homebridge.service
sudo systemctl enable homebridge.service
sudo systemctl start homebridge.service
