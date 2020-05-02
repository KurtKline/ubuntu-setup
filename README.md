# Ubuntu Set-up
This project allows me to automatically install my preferred packages, programs, dotfiles, and desktop customizations on Ubuntu. 

It has been tested on fresh installations of:  
`Ubuntu 20.04 LTS - GNOME desktop`  
`Ubuntu 18.04 LTS - GNOME desktop`

The majority of the code and structure were taken and adapted from:  
https://github.com/victoriadrake/dotfiles/  
https://github.com/tomnomnom/dotfiles

## How to run set-up
Install git  
```sh
sudo apt install git
```

Clone where you keep your git projects  
```sh
git clone https://github.com/KurtKline/ubuntu-setup.git
```

Grant execute permissions on shell scripts  
```sh
cd ubuntu-setup && chmod u+x -R scripts
```

Start set-up process  
```sh
cd scripts && ./setup.sh
```

Sit back and relax ☕

## Included `scripts/`
- `setup.sh` orchestrates the set-up process
- `symlink.sh` sets up symbolic links in `$HOME`; For example: `$HOME/.bashrc -> $HOME/Git/ubuntu-setup/.bashrc`
- `aptinstall.sh` apt installs
- `snapinstall.sh` snap installs
- `programs.sh` install software that cannot use apt/snap installation, or requires additional set-up
- `desktop.sh` desktop environment settings and extensions
