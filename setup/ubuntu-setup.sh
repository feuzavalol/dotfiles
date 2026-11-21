sudo apt update
sudo apt upgrade
sudo apt install flatpak git curl
flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo
flatpak install flathub org.gnome.Extensions
sudo apt install texlive-full
curl -LsSf https://astral.sh/uv/install.sh | sh
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install
curl -sSfL https://raw.githubusercontent.com/ajeetdsouza/zoxide/main/install.sh | sh
