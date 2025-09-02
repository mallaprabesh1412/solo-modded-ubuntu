#!/data/data/com.termux/files/usr/bin/bash
echo "[+] Updating Termux..."
pkg update -y && pkg upgrade -y
pkg install -y proot-distro wget curl tigervnc

echo "[+] Installing Ubuntu GUI..."
bash distro/proot-distro.sh

echo "[+] Setting up default user..."
bash distro/user.sh

echo "[+] Setup complete! Start GUI with 'bash distro/gui.sh'"
