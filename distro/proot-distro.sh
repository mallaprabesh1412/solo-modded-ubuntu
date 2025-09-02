#!/data/data/com.termux/files/usr/bin/bash
DISTRO_NAME="ubuntu-modded"

echo "[+] Installing Ubuntu if not already installed..."
if ! proot-distro list | grep -q "$DISTRO_NAME"; then
    proot-distro install ubuntu
    echo "[+] Ubuntu installed!"
else
    echo "[!] Ubuntu already installed."
fi

echo "[+] Updating Ubuntu packages..."
proot-distro login ubuntu -- bash -c "apt update && apt upgrade -y"

echo "[+] Installing GUI packages..."
proot-distro login ubuntu -- bash -c "apt install -y xfce4 xfce4-goodies x11vnc firefox dbus-x11"

echo "[+] GUI environment setup complete!"
