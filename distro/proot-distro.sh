#!/data/data/com.termux/files/usr/bin/bash
: <<'BANNER'
  _________________  .____    ________     ____ _____________ ____ _________________________ ___ 
 /   _____/\_____  \ |    |   \_____  \   |    |   \______   \    |   \      \__    ___/    |   \
 \_____  \  /   |   \|    |    /   |   \  |    |   /|    |  _/    |   /   |   \|    |  |    |   /
 /        \/    |    \    |___/    |    \ |    |  / |    |   \    |  /    |    \    |  |    |  / 
/_______  /\_______  /_______ \_______  / |______/  |______  /______/\____|__  /____|  |______/  
        \/         \/        \/       \/                   \/                \/                  
BANNER

# Install Ubuntu in Termux for solo-modded-ubuntu

DISTRO_NAME="ubuntu-solo"

if proot-distro list | grep -q "$DISTRO_NAME"; then
    echo "[!] $DISTRO_NAME already installed."
else
    echo "[+] Installing $DISTRO_NAME..."
    proot-distro install ubuntu
    mv ~/../usr/var/lib/proot-distro/installed-rootfs/ubuntu ~/../usr/var/lib/proot-distro/installed-rootfs/$DISTRO_NAME
    echo "[+] $DISTRO_NAME installed."
fi

echo "[+] Updating and installing GUI packages..."
proot-distro login $DISTRO_NAME -- bash -c "apt update && apt upgrade -y && apt install -y xfce4 xfce4-goodies x11vnc firefox dbus-x11"
