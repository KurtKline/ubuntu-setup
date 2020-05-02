# Bare-bones Ubuntu Set-up
This branch is mostly the same as `master`, but without the aesthetic changes such as desktop themes & extensions, .vimrc, bash customizations, and zsh.

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
- `aptinstall.sh` apt installs
- `programs.sh` install software that cannot use apt/snap installation, or requires additional set-up
- `setup.sh` orchestrates the set-up process
- `snapinstall.sh` snap installs
- `symlink.sh` sets up symbolic links in `$HOME`; For example: `$HOME/.bashrc -> $HOME/Git/ubuntu-setup/.bashrc`
