#!/bin/bash
# Bootstrap Kali in macOS container

# DNS
echo "nameserver 8.8.8.8" > /etc/resolv.conf

# Updates
apt update -y
apt full-upgrade -y

# networking
apt install -y iputils-ping net-tools curl sudo vim

# Kali tools (minimal)
apt install -y kali-linux-headless

# Cleanup
apt autoremove -y
apt clean

echo "Kali container is ready!"
