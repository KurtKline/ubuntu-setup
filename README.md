# Bare-Bones Ubuntu Set-up
This branch is basically the same as `master`, but without the aesthetic changes such as desktop themes, installation of zsh, .vimrc, and bash customizations.

The majority of the code and structure were taken and adapted from: 
https://github.com/victoriadrake/dotfiles/ 
https://github.com/tomnomnom/dotfiles

## How to use
(1) `git clone` the project under your `$HOME` directory somewhere. I have it under `$HOME/Git/`  
(2) `cd` into project folder  
(3) Run `chmod u+x -R scripts` to ensure you have execute permissions for the shell scripts  
(4) `cd` into the `scripts` folder  
(5) Run the `setup.sh` script by using the command `./setup.sh`  
(6) Sit back and relax

## Included `scripts/`

- `symlink.sh` sets up symbolic links in `$HOME`; For example: `$HOME/.bashrc -> $HOME/Git/ubuntu-setup/.bashrc`
- `aptinstall.sh` Ubuntu apt installs
- `snapinstall.sh` snap installs
- `programs.sh` installation of other software that cannot use basic install procedure
- `desktop.sh` desktop environment settings and extensions
- `setup.sh` orchestrates the set-up process
