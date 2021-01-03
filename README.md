# My openHAB setup

This repository contains a collection of scripts and backup files to restore my openHAB installation easily.
It is based on a clean openHABian installation on the `Raspberry 2 Model B` (`a01041`).

## Setup

1. flash the most recent openHABian to an SD-Card, put it into the Raspberry and start it.
1. Connect the *Phoscon ConBee II* dongle via an USB-Extension cord to the Raspberry.
1. Connect Ethernet
1. Connect power
1. Wait until openHABian is installed (i.e., until you receive a response when trying to ssh to it).
1. Connect via ssh: `ssh openhabian@<ip-address>`, password is `openhabian`.
1. Restart

## Manual configuration

1. append the content of your `id_rsa.pub` to `~/.ssh/authorized_keys`
1. change the password: `passwd openhabian`
1. install `deCONZ`
