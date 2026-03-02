# 🛠️ dotfiles

A collection of my personal configuration files, managed with [GNU stow](https://www.gnu.org/software/stow/). This repository helps me maintain a consistent environment across different machines with minimal setup time.

## 📋 Prerequisites

This setup is designed for Arch-based systems, though the configurations can be adapted for any Linux distro. Ensure you have the following tools installed:

| Tool | Purpose | Install Command (Arch) |
| --- | --- | --- |
| **Git** | Version control | `sudo pacman -S git` |
| **Stow** | Symlink manager | `sudo pacman -S stow` |

---

## 🚀 Installation

### 1. Clone the repository

Clone this repo directly into your `$HOME` directory:

```bash
git clone git@github.com:l1nque/dotfiles.git ~/dotfiles
cd ~/dotfiles

```

### 2. Deploy configurations

Use GNU Stow to symlink the configurations. To stow everything in the current directory to your home folder, run:

```bash
stow .

```

> If you already have existing config files, use `stow --adopt .` to link them. **Warning:** This may overwrite repository files with your local versions, so check `git diff` afterward!

---

## 📁 Structure

* `.config/zshrc/` - Shell configurations
* `.config/nvim/` - Neovim setup
* `.config/tmux/` - Terminal multiplexer settings
* `.config/ohmyposh/` - Prompt engine settings 
* `.config/noctalia/` - Dekstop shell setting 
* `.config/niri/` - Window manager settings 
* `.config/ghostty/` - Terminal emulator settings 

