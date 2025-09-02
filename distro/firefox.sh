#!/data/data/com.termux/files/usr/bin/bash
echo "[+] Launching Firefox in Ubuntu GUI..."
proot-distro login ubuntu -- bash -c "DISPLAY=:1 firefox &"
