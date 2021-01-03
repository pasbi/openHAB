# My openHAB setup

This repository contains a collection of scripts and backup files to restore my openHAB installation easily.
It is based on a clean openHABian installation on the `Raspberry 2 Model B` (`a01041`).

## Setup

1. flash the most recent openHABian to an SD-Card, put it into the Raspberry and start it.
2. Connect the *Phoscon ConBee II* dongle via an USB-Extension cord to the Raspberry.
3. Connect Ethernet
4. Connect a HDMI screen to see when openHABian installation is ready
5. Connect power
6. Wait until openHABian is installed (i.e., until you receive a response when trying to ssh to it).
7. Connect via ssh: `ssh openhabian@<ip-address>`, password is `openhabian`.
7. Restart

## Manual configuration

1. append the content of your `id_rsa.pub` to `~/.ssh/authorized_keys`
2. change the password: `passwd openhabian`
3. install `deCONZ`
