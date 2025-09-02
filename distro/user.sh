#!/data/data/com.termux/files/usr/bin/bash
: <<'BANNER'
  _________________  .____    ________     ____ _____________ ____ _________________________ ___ 
 /   _____/\_____  \ |    |   \_____  \   |    |   \______   \    |   \      \__    ___/    |   \
 \_____  \  /   |   \|    |    /   |   \  |    |   /|    |  _/    |   /   |   \|    |  |    |   /
 /        \/    |    \    |___/    |    \ |    |  / |    |   \    |  /    |    \    |  |    |  / 
/_______  /\_______  /_______ \_______  / |______/  |______  /______/\____|__  /____|  |______/  
        \/         \/        \/       \/                   \/                \/                  
BANNER

# Create default user inside Ubuntu

DISTRO_NAME="ubuntu-solo"

echo "[+] Setting up default user..."
proot-distro login $DISTRO_NAME -- bash -c "useradd -m termuxuser || true; echo 'termuxuser:termux' | chpasswd"
echo "[+] User setup complete!"
