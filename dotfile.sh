#!/bin/bash

# Update the system
sudo pacman -Syu

# Install necessary packages
sudo pacman -S neovim fzf ripgrep lazygit go nodejs jdk-openjdk libreoffice

# Clone Packer repository for Neovim
git clone https://github.com/wbthomason/packer.nvim ~/.local/share/nvim/site/pack/packer/start/packer.nvim

# Clone your Neovim configuration repository
git clone https://github.com/gem-404/new_nvim ~/new_nvim_temp

# Remove existing Neovim configuration
rm -rf ~/.config/nvim

# Move your Neovim configuration to the appropriate directory
mv ~/new_nvim_temp ~/.config/nvim

# Download Zsh if not already installed
sudo pacman -S zsh

# Change the shell to Zsh
chsh -s $(which zsh)

# Clone your Zsh configuration repository if it exists
if [ ! -d ~/.zshrc ]; then
    git clone https://github.com/gem-404/zsh_config ~/.zsh_config_temp
    mv ~/.zshrc ~/.zshrc_backup # Backup existing .zshrc
    ln -s ~/.zsh_config_temp/.zshrc ~/.zshrc # Create symlink to new .zshrc
fi

# Clean up temporary files
rm -rf ~/new_nvim_temp ~/.zsh_config_temp
