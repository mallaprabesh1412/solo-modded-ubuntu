

# Solo Modded Ubuntu

A fully modded Ubuntu environment running inside **Termux** with **XFCE desktop** via VNC.  

- Modern interface with **wallpaper** and **desktop icons** for Firefox, VS Code, and GUI controls.  
- ASCII banners in all scripts for style.  
- Works out-of-the-box for any Termux user.  

---

## **Screenshot / Wallpaper**

![Solo Modded Ubuntu Desktop](distro/image.jpg)

> The interface includes a panel at the top, desktop icons, and a clean wallpaper.

---

## **Quick Start**

1. **Install Termux** (F-Droid version recommended)  
2. **Clone the repository**  

```bash
git clone https://github.com/mallaprabesh1412/solo-modded-ubuntu.git
cd solo-modded-ubuntu

3. Setup the environment



bash setup.sh

Installs Ubuntu if missing

Makes scripts executable

Copies .desktop files to Ubuntu Desktop



---

Usage

Step 1: Enter Ubuntu shell

./solo

You will now be in the Ubuntu shell as:

solo@localhost:~$


---

Step 2: Start GUI / VNC

Inside Ubuntu:

vncstart

VNC starts on display :1 → port 5901

XFCE desktop loads automatically with your wallpaper and desktop icons


Connect using VNC Viewer (localhost:5901) with default password: termux.


---

Step 3: Stop GUI / VNC

Inside Ubuntu:

vncstop


---

Desktop Interface

Wallpaper: distro/image.jpg

Desktop icons:

Firefox

VS Code

Start GUI

Stop GUI



Click icons to launch applications instantly.


---

Scripts Overview

Script	Description

solo	Launch Ubuntu shell
distro/vncstart	Start VNC + XFCE desktop
distro/vncstop	Stop VNC
distro/firefox.sh	Launch Firefox
distro/code.sh	Launch VS Code
setup.sh	Setup environment and permissions
remove.sh	Remove Ubuntu and repo
distro/gui.sh	Alias for vncstart
distro/user.sh	User management helper
distro/proot-distro.sh	Optional PRoot helper



---

.desktop Files

All .desktop files are in patches/ and copied automatically to Ubuntu Desktop:

File	Description

firefox.desktop	Launch Firefox
code.desktop	Launch VS Code
gui-start.desktop	Start VNC GUI
gui-stop.desktop	Stop VNC GUI



---

Requirements

Termux (F-Droid recommended)

Internet connection for Ubuntu setup

VNC Viewer app



---

License

See LICENSE


---

Changelog

See CHANGELOG.md

---

✅ **This README.md highlights:**

- Your wallpaper as the screenshot (`distro/image.jpg`)  
- Clear step-by-step workflow for new users  
- Desktop interface explanation (icons, panel, wallpaper)  
- All script references match the new updated repo  

---

