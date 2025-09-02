#!/data/data/com.termux/files/usr/bin/bash
echo "[+] Starting VNC server..."
proot-distro login ubuntu -- bash -c "mkdir -p ~/.vnc && x11vnc -storepasswd termux ~/.vnc/passwd"
proot-distro login ubuntu -- bash -c "vncserver :1 -geometry 1280x720 -depth 24"
echo "[+] GUI running! Connect using VNC Viewer at localhost:5901"
