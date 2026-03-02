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

## Additional tools

The following is a list of additional tools to streamline development and make 'life in the terminal' a lot more enjoyable


| Tool | Purpose | Install Command (Arch) |
| --- | --- | --- |
| zsh | unix shell | `sudo pacman -S zsh` |
| ghostty | terminal emulator | `sudo pacman -S ghostty` |
| tmux | terminal multiplexer | `sudo pacman -S tmux` |
| ohmyposh | terminal prompt | `sudo pacman -S ohmyposh` |
| nvim | text editor | `sudo pacman -S nvim` |
| glow | markdown renderer | `sudo pacman -S glow` |
| chafa | image renderer | `sudo pacman -S chafa`  |
| eza | file listing utility | `sudo pacman -S eza` |
| fzf | fuzzy file finder | `sudo pacman -S fzf` |
| ripgrep | faster grep | `sudo pacman -S ripgrep` |
| fd | a better `find` | `sudo pacman -S fd` |
| pass | password store | `sudo pacman -S pass`
| btop | resource monitor | `sudo pacman -S btop` |
