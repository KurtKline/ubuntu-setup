#!/bin/bash

echo "🖥️ Customizing Desktop & Gnome Preferences"

# Installing Canta theme
git clone https://github.com/vinceliuice/Canta-theme.git
mkdir ~/.themes/; mv Canta-theme $_
cd ~/.themes/Canta-theme/ && ./install.sh -c dark -t standard -s standard

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