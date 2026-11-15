#!/usr/bin/env bash
set -euo pipefail

# --- System update ---
sudo pacman -Syu --noconfirm

# --- Core packages (official repos) ---
# base-devel is needed for building AUR packages
sudo pacman -S --needed --noconfirm \
    base-devel git curl \
    vlc obsidian \
    texlive-meta \
    uv zoxide ripgrep zsh neovim tailscale yay ttf-jetbrains-mono rofi

sudo systemctl enable --now tailscaled

# --- fzf (git install, as in the original script) ---
if [ ! -d "$HOME/.fzf" ]; then
    git clone --depth 1 https://github.com/junegunn/fzf.git "$HOME/.fzf"
fi
"$HOME/.fzf/install"

echo "Done. Restart your shell."
