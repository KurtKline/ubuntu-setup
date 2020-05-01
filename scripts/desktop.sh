#!/bin/bash

echo "🖥️ Customizing Desktop & Gnome Preferences"

# Installing Canta theme
git clone https://github.com/vinceliuice/Canta-theme.git
mkdir ~/.themes/; mv Canta-theme $_
~/.themes/Canta-theme/install.sh -c dark -t standard -s standard

# Installing Ant theme
git clone https://github.com/EliverLara/Ant-Dracula.git
mv Ant-Dracula ~/.themes/

# Install Blyr plugin
git clone https://github.com/yozoon/gnome-shell-extension-blyr.git
cd gnome-shell-extension-blyr/
make local-install
rm -rf ../gnome-shell-extension-blyr

gsettings set org.gnome.shell favorite-apps "['org.gnome.Nautilus.desktop', 'pycharm-community_pycharm-community.desktop', 'code_code.desktop', 'atom_atom.desktop', 'chromium_chromium.desktop', 'spotify_spotify.desktop', 'org.gnome.Terminal.desktop']"
gsettings set org.gnome.desktop.lockdown disable-lock-screen true

# Tweaks > Extensions
gsettings set org.gnome.shell enabled-extensions "['ubuntu-dock@ubuntu.com', 'user-theme@gnome-shell-extensions.gcampax.github.com']"
gsettings set org.gnome.shell.extensions.desktop-icons show-home false
gsettings set org.gnome.shell.extensions.desktop-icons show-trash false

# Tweaks > Top Bar
gsettings set org.gnome.desktop.interface clock-show-weekday true
gsettings set org.gnome.desktop.interface show-battery-percentage true

# Tweaks > Appearance
gsettings set org.gnome.desktop.interface gtk-theme 'Canta-dark' # Applications
gsettings set org.gnome.desktop.interface cursor-theme 'Yaru' # Cursor
gsettings set org.gnome.desktop.interface icon-theme 'Yaru' # Icons
gsettings set org.gnome.shell.extensions.user-theme name 'Canta-dark' # Shell
gsettings set org.gnome.desktop.wm.preferences theme 'Canta-dark'
