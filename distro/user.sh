#!/data/data/com.termux/files/usr/bin/bash
echo "[+] Creating default user 'termuxuser'..."
proot-distro login ubuntu -- bash -c "useradd -m termuxuser || true; echo 'termuxuser:termux' | chpasswd"
echo "[+] User setup complete!"
