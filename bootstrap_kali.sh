#!/bin/bash
# Bootstrap Kali Linux in a macOS container (safe version)

set -euo pipefail

# -------------------------
# Step 1: Fix DNS
# -------------------------
# Ensure container can resolve external domains
echo "nameserver 1.1.1.1" > /etc/resolv.conf
echo "nameserver 8.8.8.8" >> /etc/resolv.conf

# -------------------------
# Step 2: Update & Upgrade
# -------------------------
apt update -y
apt full-upgrade -y

# -------------------------
# Step 3: Install essential networking/tools
# -------------------------
apt install -y iputils-ping net-tools curl sudo vim

# -------------------------
# Step 4: Install minimal Kali tools
# -------------------------
# Avoid system/kernel packages that break containers
apt install -y kali-linux-headless

# -------------------------
# Step 5: Cleanup
# -------------------------
apt autoremove -y
apt clean

# -------------------------
# Step 6: Final message
# -------------------------
echo "✅ Kali container is ready!"
