#!/bin/bash
: <<'BANNER'
  _________________  .____    ________     ____ _____________ ____ _________________________ ___ 
 /   _____/\_____  \ |    |   \_____  \   |    |   \______   \    |   \      \__    ___/    |   \
 \_____  \  /   |   \|    |    /   |   \  |    |   /|    |  _/    |   /   |   \|    |  |    |   /
 /        \/    |    \    |___/    |    \ |    |  / |    |   \    |  /    |    \    |  |    |  / 
/_______  /\_______  /_______ \_______  / |______/  |______  /______/\____|__  /____|  |______/  
        \/         \/        \/       \/                   \/                \/                  
BANNER

echo "[+] Setting up Solo Modded Ubuntu..."

# Install Ubuntu if missing
if ! proot-distro list | grep -q ubuntu; then
    echo "[+] Installing Ubuntu..."
    proot-distro install ubuntu
fi

# Make scripts executable
chmod +x solo
chmod +x distro/vncstart distro/vncstop distro/gui.sh distro/firefox.sh distro/code.sh distro/proot-distro.sh distro/user.sh

# Copy .desktop files to Ubuntu desktop
mkdir -p ~/Desktop
cp patches/*.desktop ~/Desktop/
chmod +x ~/Desktop/*.desktop

echo "[+] Setup complete! Run 'solo' to enter Ubuntu shell."
