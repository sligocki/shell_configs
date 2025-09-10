#!/bin/bash
# Install config on new system

# Install user.zsh
echo "source $HOME/shell_configs/user.zsh" >> ~/.zprofile
echo "source $HOME/shell_configs/user.zsh" >> ~/.zshrc
# Install user.bash
echo "source $HOME/shell_configs/user.bash" >> ~/.bash_profile
echo "source $HOME/shell_configs/user.bash" >> ~/.bashrc

# Install gitconfig
rm -f ~/.gitconfig
ln -s ~/shell_configs/gitconfig ~/.gitconfig

# Install Rprofile
rm -f ~/.Rprofile
ln -s ~/shell_configs/Rprofile ~/.Rprofile
