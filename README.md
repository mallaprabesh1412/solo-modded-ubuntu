# solo-modded-ubuntu


# 🐧 Modded Ubuntu in Termux (with GUI + VNC)

Run a full **Ubuntu Linux Desktop Environment** inside Termux on Android — complete with **XFCE4 GUI, Firefox browser, and VNC access**.  
No root required. Works on most modern Android devices.  

---

## ✨ Features
- ⚡ One-command setup (`bash setup.sh`)
- 🖥️ Full Ubuntu XFCE4 Desktop Environment
- 🌐 Firefox browser support
- 🔑 Default user account (`termuxuser`)
- 🎨 Desktop shortcuts & patches support
- 📡 VNC server for GUI access

---

## 📦 Installation

1. **Install Termux** from [F-Droid](https://f-droid.org/en/packages/com.termux/).  
   > ⚠️ Avoid the outdated Play Store version.

2. **Clone this repo**:
   ```bash
   git clone https://github.com/mallaprabesh1412/solo-modded-ubuntu.git
   cd modded-ubuntu-termux

3. Run the setup script:

bash setup.sh




---

🚀 Usage

Start Ubuntu GUI

bash distro/gui.sh

Now open VNC Viewer (download from Play Store) and connect to:

localhost:5901

Password: termux

Stop Ubuntu GUI

bash distro/vncstop

Launch Firefox

bash distro/firefox.sh


---

🗑️ Removal

To completely remove Ubuntu:

bash remove.sh


---

📂 Project Structure

modded-ubuntu-termux/
├── setup.sh         # Main setup script
├── remove.sh        # Remove Ubuntu distro
├── README.md        # This file
├── CHANGELOG.md     # Version history
├── LICENSE          # MIT License
│
├── distro/          # Ubuntu + GUI related scripts
│   ├── proot-distro.sh
│   ├── gui.sh
│   ├── firefox.sh
│   ├── user.sh
│   ├── vncstart
│   ├── vncstop
│   ├── image.jpg
│   └── image1.jpg
│
└── patches/         # Desktop patches
    └── code.desktop


---

📖 Notes

Default user is termuxuser with password termux

XFCE4 is the desktop environment

Tested on Android 10+ with Termux latest version

VNC Viewer app required to access GUI



---

📝 License

This project is licensed under the MIT License.
Feel free to fork, modify, and share!
