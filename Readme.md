
# Arch Linux Dotfile Setup

This repository contains a dotfile script for setting up an Arch Linux system
with essential tools and configurations for a smooth development environment.
The script automates the process of updating the system, installing necessary
packages, configuring Neovim with Packer, setting up additional tools like fzf,
ripgrep, and lazygit, installing programming language dependencies (Go, Node.js,
JDK), and configuring Zsh as the default shell.

## Contents
dotfile.sh: Bash script for automating system setup.
README.md: This file explaining the contents of the repository.

## Usage
Clone this repository to your Arch Linux system:

```bash

git clone https://github.com/gem-404/.dotfiles
```

Navigate to the cloned directory:

```bash

cd .dotfiles
```

Make dotfile.sh executable (if it isn't already):

```bash

chmod +x dotfile.sh
```

Execute the script:

```bash

./dotfile.sh
```

Follow the on-screen prompts if any.

What Does the Script Do?
Updates the system using pacman.
Installs necessary packages: Neovim, fzf, ripgrep, lazygit, Go, Node.js, JDK, and LibreOffice.
Clones Packer for Neovim from its repository.
Clones the user's Neovim configuration repository.
Removes any existing Neovim configuration.
Moves the user's Neovim configuration to the appropriate directory.
Installs Zsh if not already present and sets it as the default shell.
Clones the user's Zsh configuration repository if it exists and symlinks the .zshrc file.
