echo ">>>Upgrade"
sudo dnf upgrade
echo ">>>Gnome tweaks"
sudo dnf install -y gnome-tweaks
echo ">>>Framework camera"
sudo dnf install -y v4l-util
sudo dnf install -y guvcvie
echo ">>>KeePassXC"
sudo dnf install -y keepassxc
echo ">>>Ghostty"
sudo dnf copr enable -y scottames/ghostty
sudo dnf install -y ghostty
echo ">>>Fonts"
sudo dnf install -y jetbrains-mono-fonts
sudo dnf install -y adobe-source-code-pro-fonts
source ./install-nerd-fonts JetBrainsMono
source ./install-nerd-fonts SourceCodePro
source ./aporetic.sh
echo ">>>Shell"
curl -sS https://starship.rs/install.sh | sh
source ./zsh-install.sh
echo ">>>Python"
sudo dnf install -y python-pip
sudo dnf install -y uv
echo ">>>emacs"
sudo dnf install -y emacs
echo ">>>Other langs"
sudo dnf install -y ripgrep
sudo dnf install -y clang
sudo dnf install -y fzf
