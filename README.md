# Bare-Bones Ubuntu Set-up
This branch is basically the same as `master`, but without the aesthetic changes such as desktop themes & extensions, .vimrc, bash customizations, and the installation of zsh.

It has been tested on fresh installations of:  
`Ubuntu 20.04 LTS`  
`Ubuntu 18.04 LTS`

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
git checkout bare-bones 
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

- `symlink.sh` sets up symbolic links in `$HOME`; For example: `$HOME/.bashrc -> $HOME/Git/ubuntu-setup/.bashrc`
- `aptinstall.sh` Ubuntu apt installs
- `snapinstall.sh` snap installs
- `programs.sh` installation of other software that cannot use basic install procedure
- `desktop.sh` desktop environment settings and extensions
- `setup.sh` orchestrates the set-up process
