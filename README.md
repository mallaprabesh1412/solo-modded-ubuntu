# solo-modded-ubuntu


---

_________________  .____    ________     ____ _____________ ____ _________________________ ___ 
 /   _____/\_____  \ |    |   \_____  \   |    |   \______   \    |   \      \__    ___/    |   \
 \_____  \  /   |   \|    |    /   |   \  |    |   /|    |  _/    |   /   |   \|    |  |    |   /
 /        \/    |    \    |___/    |    \ |    |  / |    |   \    |  /    |    \    |  |    |  / 
/_______  /\_______  /_______ \_______  / |______/  |______  /______/\____|__  /____|  |______/  
        \/         \/        \/       \/                   \/                \/                  

# 🐧 Solo Modded Ubuntu (GUI + VNC in Termux)

Run a **full Ubuntu desktop environment** inside Termux on Android — complete with **XFCE4 GUI, Firefox, VS Code, and VNC support**.  
No root required. Works on modern Android devices.  

---

## ✨ Features
- ⚡ One-command setup (`bash setup.sh`)
- 🖥️ XFCE4 Desktop Environment
- 🌐 Firefox browser support
- 🖊️ VS Code launcher (`code.desktop`)  
- 🔑 Default user account (`termuxuser`)
- 🎨 Desktop shortcuts (`firefox.desktop`, `gui-start.desktop`, `gui-stop.desktop`, `code.desktop`)  
- 📡 VNC server for GUI access

---

## 📦 Installation

1. **Install Termux** from [F-Droid](https://f-droid.org/en/packages/com.termux/)  
   > ⚠️ Avoid outdated Play Store version.

2. **Clone the repo**:
```bash
git clone https://github.com/mallaprabesh1412/solo-modded-ubuntu.git
cd solo-modded-ubuntu

3. Run the setup script:



bash setup.sh


---

🚀 Usage

Start Ubuntu GUI

bash distro/gui.sh

Connect via VNC Viewer:

localhost:5901

Password: termux

Stop Ubuntu GUI

bash distro/vncstop

Launch Firefox

bash distro/firefox.sh

Launch VS Code

Click the Code icon on your desktop (or run):

bash distro/code.sh


---

🗑️ Removal

To completely remove Ubuntu:

bash remove.sh


---

📂 Project Structure

solo-modded-ubuntu/
├── setup.sh
├── remove.sh
├── README.md
├── CHANGELOG.md
├── LICENSE
│
├── distro/
│   ├── proot-distro.sh
│   ├── gui.sh
│   ├── firefox.sh
│   ├── code.sh          # VS Code launcher
│   ├── user.sh
│   ├── vncstart
│   ├── vncstop
│   ├── image.jpg
│   └── image1.jpg
│
└── patches/
    ├── code.desktop
    ├── firefox.desktop
    ├── gui-start.desktop
    └── gui-stop.desktop


---

📖 Notes

Default user: termuxuser, password: termux

XFCE4 is the desktop environment

Tested on Android 10+ with latest Termux

VNC Viewer required for GUI



---

📝 License

This project is licensed under the MIT License
---
