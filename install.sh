#!/bin/bash
# Install config on new system

# TODO: Install user.zsh
# TODO: Install user.bash

# Install gitconfig
rm -f ~/.gitconfig
ln -s ~/shell_configs/gitconfig ~/.gitconfig

# Install Rprofile
rm -f ~/.Rprofile
ln -s ~/shell_configs/Rprofile ~/.Rprofile
