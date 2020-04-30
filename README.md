# Ubuntu Setup
Installs my commonly used packages, programs, and dotfiles. This can be used to quickly set up a fresh VM or Ubuntu installation, instead of manually installing programs from the terminal. 

The majority of the code and structure were taken and adapted from: https://github.com/victoriadrake/dotfiles/ (who adapted from https://github.com/tomnomnom/dotfiles)

## How to use
(1) `git clone` the project under your `$HOME` directory somewhere. I have it under `$HOME/Git/`  
(2) `cd` into project folder  
(3) Run `chmod u+x -R scripts` to ensure you have execute permissions for the shell scripts  
(4) `cd` into the `scripts` folder  
(5) Run the `setup.sh` script by using the command `./setup.sh`  
(6) Sit back and relax

## Describing the process
When the `setup.sh` script is executed, it executes the following scripts: 

### symlink.sh
Creates symbolic links in the $HOME directory which point back to the dotfiles in the project folder. 

For example: `$HOME/.bashrc -> $HOME/Git/ubuntu-setup/.bashrc`

### aptinstall.sh
Installs commonly used packages and programs with apt.

### snapinstall.sh
Installs commonly used packages and programs with snap.

### programs.sh
For programs which cannot be installed simply with apt or snap, the shell scripts in the `programs` folder are executed.

## Tips
### Setting your favorite apps
Here's an example of mine:  
`gsettings set org.gnome.shell favorite-apps "['org.gnome.Nautilus.desktop', 'pycharm-community_pycharm-community.desktop', 'code_code.desktop', 'atom_atom.desktop', 'chromium_chromium.desktop', 'spotify_spotify.desktop']"`

The .desktop files can be found here `/usr/share/applications/`. Alternatively, you can manually add the apps you want to your favorites and run `gsettings get org.gnome.shell favorite-apps` to see their .desktop names. 
