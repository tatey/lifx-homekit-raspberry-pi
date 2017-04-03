# Turn a Raspberry Pi into a HomeKit bridge for LIFX lights

A quick dirty guide for getting Homebridge with the LIFX plugin running on your
Raspberry Pi. Tested with a Raspberry Pi 3.

![](https://cloud.githubusercontent.com/assets/19860/19024783/325cefb6-894f-11e6-87e5-634e6a8bffad.jpg)

## TL;DR

SSH into your Raspberry Pi and run this script:

    curl https://raw.githubusercontent.com/tatey/lifx-homekit-raspberry-pi/master/install.sh | sh

Add the Bridge to HomeKit using a compatible app. I recommend [Home by Matthias
Hochgatterer](https://itunes.apple.com/app/id995994352).

## Step by Step

Assuming you're on a Mac with an SD card reader:

Download the latest version of Raspbian Lite.

    curl -OL https://downloads.raspberrypi.org/raspbian_lite_latest

Plug in your MicroSD card (You'll need the adapter) and use `diskutil` to work
out its identifier.

    diskutil list

Unmount the disk.

    diskutil unmountDisk /dev/disk<N>

Copy the image.

    sudo dd bs=1m if=2016-09-23-raspbian-jessie-lite.img of=/dev/rdisk<N>

Plug the MicroSD card back into the Raspberry Pi, connect the the ethernet
cable, power cable, and power on.

Use [`nmap`](https://nmap.org) to find the IP address of your Raspberry Pi (Probably the highest
number).

    nmap -sn 10.0.0.0/24

Shell into your Raspberry Pi and run the install script.

    ssh pi@10.0.0.167
    curl https://raw.githubusercontent.com/tatey/lifx-homekit-raspberry-pi/master/install.sh | sh

If you get stuck refer to the original guides for more detail:

* https://www.raspberrypi.org/documentation/installation/installing-images/mac.md
* https://www.raspberrypi.org/documentation/remote-access/ssh/unix.md

## Thanks

This is made possible thanks to these open source projects:

* https://github.com/nfarina/homebridge
* https://github.com/devbobo/homebridge-lifx-lan
* https://github.com/MariusRumpf/node-lifx
* http://www.raspbian.org
