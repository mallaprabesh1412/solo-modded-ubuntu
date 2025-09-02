#!/data/data/com.termux/files/usr/bin/bash
: <<'BANNER'
  _________________  .____    ________     ____ _____________ ____ _________________________ ___ 
 /   _____/\_____  \ |    |   \_____  \   |    |   \______   \    |   \      \__    ___/    |   \
 \_____  \  /   |   \|    |    /   |   \  |    |   /|    |  _/    |   /   |   \|    |  |    |   /
 /        \/    |    \    |___/    |    \ |    |  / |    |   \    |  /    |    \    |  |    |  / 
/_______  /\_______  /_______ \_______  / |______/  |______  /______/\____|__  /____|  |______/  
        \/         \/        \/       \/                   \/                \/                  
BANNER

# Setup script for solo-modded-ubuntu Termux environment

echo "[+] Updating Termux packages..."
pkg update -y && pkg upgrade -y

echo "[+] Installing required packages..."
pkg install -y proot-distro git wget curl tigervnc

echo "[+] Setting up Ubuntu distro..."
bash distro/proot-distro.sh

echo "[+] Creating default user..."
bash distro/user.sh

echo "[+] Done! Start GUI with:"
echo "    bash distro/gui.sh"
