#!/bin/bash

echo "🖥️ Customizing Desktop & Gnome Preferences"

# Installing Canta theme
git clone https://github.com/vinceliuice/Canta-theme.git
mkdir ~/.themes/; mv Canta-theme $_
~/.themes/Canta-theme/install.sh -c dark -t standard -s standard

# Installing Ant theme
git clone https://github.com/EliverLara/Ant-Dracula.git
mv Ant-Dracula ~/.themes/

function enable_extension {
    if [ $(lsb_release -rs) == '18.04' ]; then 
        gnome-shell-extension-tool -e $1
    else 
        gnome-extensions enable $1
    fi
}

# Install Blyr plugin
git clone https://github.com/yozoon/gnome-shell-extension-blyr.git
cd gnome-shell-extension-blyr/
make local-install
rm -rf ../gnome-shell-extension-blyr
enable_extension blyr@yozoon.dev.gmail.com

# Install hidetopbar
cd ~/.local/share/gnome-shell/extensions/
git clone https://github.com/mlutfy/hidetopbar.git hidetopbar@mathieu.bidon.ca
cd hidetopbar@mathieu.bidon.ca
make schemas
cd ..
enable_extension hidetopbar@mathieu.bidon.ca

# Enable user shell themes
enable_extension user-theme@gnome-shell-extensions.gcampax.github.com

gsettings set org.gnome.shell favorite-apps "['org.gnome.Nautilus.desktop', 'pycharm-community_pycharm-community.desktop', 'code_code.desktop', 'atom_atom.desktop', 'google-chrome.desktop', 'spotify_spotify.desktop', 'org.gnome.Terminal.desktop']"
gsettings set org.gnome.desktop.lockdown disable-lock-screen true

# Tweaks > Extensions
if [ $(lsb_release -rs) == '18.04' ]; then 
    gsettings set org.gnome.desktop.background show-desktop-icons false
else 
    gsettings set org.gnome.shell.extensions.desktop-icons show-home false
    gsettings set org.gnome.shell.extensions.desktop-icons show-trash false
fi

# Tweaks > Top Bar
gsettings set org.gnome.desktop.interface clock-show-weekday true
gsettings set org.gnome.desktop.interface show-battery-percentage true

# Tweaks > Appearance
if [ $(lsb_release -rs) == '18.04' ]; then 
    cur_theme='whiteglass'
    icon_theme='Humanity'
else 
    cur_theme='Yaru'
    icon_theme='Yaru'
fi

gsettings set org.gnome.desktop.interface gtk-theme 'Canta-dark' # Applications
gsettings set org.gnome.desktop.interface cursor-theme $cur_theme # Cursor
gsettings set org.gnome.desktop.interface icon-theme $icon_theme # Icons
gsettings set org.gnome.shell.extensions.user-theme name 'Canta-dark' # Shell
gsettings set org.gnome.desktop.wm.preferences theme 'Canta-dark'
