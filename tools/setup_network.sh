#!/bin/bash
# This is sample script for setup the following network
#
# Internet -> mobile phone -> usb share -> usb cable ->
#   PC(on usb0) -> PC(on net0) -> ethernet cable ->
#   NextVOD
#
# ref:https://wiki.archlinux.org/index.php/Internet_sharing
set -ex
sudo sysctl net.ipv4.ip_forward=1
net0=eth0
internet0=usb0
echo enable nat with iptables
sudo iptables -t nat -A POSTROUTING -o $internet0 -j MASQUERADE
sudo iptables -A FORWARD -m conntrack --ctstate RELATED,ESTABLISHED -j ACCEPT
sudo iptables -A FORWARD -i $net0 -o $internet0 -j ACCEPT
echo "ip route add  default via 192.168.168.2" in nextvod
echo Done
# vim:et sw=2 ts=2 ai nocp sta

