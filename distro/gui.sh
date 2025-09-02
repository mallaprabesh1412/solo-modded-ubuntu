#!/data/data/com.termux/files/usr/bin/bash
: <<'BANNER'
  _________________  .____    ________     ____ _____________ ____ _________________________ ___ 
 /   _____/\_____  \ |    |   \_____  \   |    |   \______   \    |   \      \__    ___/    |   \
 \_____  \  /   |   \|    |    /   |   \  |    |   /|    |  _/    |   /   |   \|    |  |    |   /
 /        \/    |    \    |___/    |    \ |    |  / |    |   \    |  /    |    \    |  |    |  / 
/_______  /\_______  /_______ \_______  / |______/  |______  /______/\____|__  /____|  |______/  
        \/         \/        \/       \/                   \/                \/                  
BANNER

# Start Ubuntu GUI using VNC

DISTRO_NAME="ubuntu-solo"

echo "[+] Starting VNC server..."
proot-distro login $DISTRO_NAME -- bash -c "mkdir -p ~/.vnc && x11vnc -storepasswd termux ~/.vnc/passwd"
proot-distro login $DISTRO_NAME -- bash -c "vncserver :1 -geometry 1280x720 -depth 24"
echo "[+] GUI running! Connect via VNC Viewer at localhost:5901"
