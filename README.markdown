# Turn a Raspberry Pi into a HomeKit bridge for LIFX lights

A quick dirty guide for getting Homebridge with the LIFX plugin running on your
Raspberry Pi. Tested with a Raspberry Pi 3.

![](https://cloud.githubusercontent.com/assets/19860/19024783/325cefb6-894f-11e6-87e5-634e6a8bffad.jpg)

## TL;DR

SSH into your Raspberry Pi and run this script:

    curl https://raw.githubusercontent.com/tatey/lifx-homekit-raspberry-pi/master/install.sh | sh

Add the Bridge to HomeKit using a compatible app. I recommend [Home by Matthias
Hochgatterer](https://itunes.apple.com/app/id995994352).

## Thanks

This is made possible thanks to these open source projects:

* https://github.com/nfarina/homebridge
* https://github.com/devbobo/homebridge-lifx-lan
* https://github.com/MariusRumpf/node-lifx
* http://www.raspbian.org
