# Ubuntu Set-up
This project allows me to automatically install my preferred packages, programs, dotfiles, and desktop customizations on Ubuntu. 

It has been tested on fresh installations of:  
`Ubuntu 20.04 LTS - GNOME desktop`  
`Ubuntu 18.04 LTS - GNOME desktop`

🙌 Much of the code and structure were taken and adapted from 🙌:  
https://github.com/victoriadrake/dotfiles/  
https://github.com/tomnomnom/dotfiles

💡 For a simpler set-up without themes and other aesthetic non-essentials, use the `bare-bones` branch.  
💡 `master` branch set-up took 13 minutes with my garbage 2.7 MB/s internet.

## How to initiate set-up
Install git  
```sh
sudo apt install git
```

Clone the project (e.g. in $HOME/Git/) 
```sh
git clone https://github.com/KurtKline/ubuntu-setup.git
```

Grant execute permissions on bash scripts  
```sh
cd ubuntu-setup && chmod u+x -R scripts
```

Start set-up process  
```sh
cd scripts && ./setup.sh
```

Sit back and relax ☕

## Included `scripts/`
- `aptinstall.sh` apt installs
- `desktop.sh` desktop environment settings and extensions
- `programs.sh` install software that cannot use apt/snap installation, or requires additional set-up
- `rebootshell.sh` restarts the gnome shell so new extensions can be applied
- `setup.sh` orchestrates the set-up process
- `snapinstall.sh` snap installs
- `symlink.sh` sets up symbolic links in `$HOME`; For example: `$HOME/.bashrc -> $HOME/Git/ubuntu-setup/.bashrc`

## Themes
- Desktop environment: [Canta-dark](https://github.com/vinceliuice/Canta-theme) (my default), [Ant-Dracula](https://github.com/EliverLara/Ant-Dracula) (also installed)
- Gnome extensions: [Blyr](https://extensions.gnome.org/extension/1251/blyr/), [Hide Top Bar](https://extensions.gnome.org/extension/545/hide-top-bar/)

💡 I recommend trying [Dash to Dock](https://extensions.gnome.org/extension/307/dash-to-dock/) to improve the look and feel of the dock. I left it out of this installation process because it can be a bit buggy. 
