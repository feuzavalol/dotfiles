#!/usr/bin/env bash
set -euo pipefail

# --- System update ---
sudo pacman -Syu --noconfirm

# --- Core packages (official repos) ---
# base-devel is needed for building AUR packages
sudo pacman -S --needed --noconfirm \
    base-devel git curl \
    vlc obsidian librewolf rofi papirus-icon-theme \
    obs-studio inkscape \
    texlive-meta \
    uv zoxide ripgrep tree bat yay \
    zsh neovim tailscale yay ttf-jetbrains-mono \
    intellij-idea-community-edition discord \
    cups 

yay -S visual-studio-code-bin localsend

sudo systemctl enable --now cups # Used to be able to print things - more work is required later:
# you need to add the printer manually
sudo systemctl enable --now tailscaled

# --- fzf (git install, as in the original script) ---
if [ ! -d "$HOME/.fzf" ]; then
    git clone --depth 1 https://github.com/junegunn/fzf.git "$HOME/.fzf"
fi
"$HOME/.fzf/install"

echo "Done. Restart your shell."
