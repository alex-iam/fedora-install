echo ">>>Upgrade"
sudo dnf upgrade
echo ">>>Gnome tweaks"
sudo dnf install -y gnome-tweaks
echo ">>>Framework camera"
sudo dnf install -y v4l-util
sudo dnf install -y guvcvie
echo ">>>KeePassXC"
sudo dnf install -y keepassxc
echo ">>>1Password"
sudo rpm --import https://downloads.1password.com/linux/keys/1password.asc
sudo sh -c 'echo -e "[1password]\nname=1Password Stable Channel\nbaseurl=https://downloads.1password.com/linux/rpm/stable/\$basearch\nenabled=1\ngpgcheck=1\nrepo_gpgcheck=1\ngpgkey=\"https://downloads.1password.com/linux/keys/1password.asc\"" > /etc/yum.repos.d/1password.repo'
sudo dnf install -y 1password
# echo ">>>Kitty"
# source ./kitty.sh
echo ">>>Fonts"
sudo dnf install -y jetbrains-mono-fonts
sudo dnf install -y adobe-source-code-pro-fonts
source ./install-nerd-fonts JetBrainsMono
source ./install-nerd-fonts SourceCodePro
echo ">>>Shell"
curl -sS https://starship.rs/install.sh | sh
source ./zsh-install.sh
echo ">>>Python"
sudo dnf install -y python-pip
curl https://pyenv.run | bash
sudo dnf install -y nodejs
sudo npm install -g pyright
echo ">>>emacs"
sudo dnf install -y emacs
echo ">>>Other langs"
sudo dnf install -y clang
echo ">>>VSCode"
sudo rpm --import https://packages.microsoft.com/keys/microsoft.asc
echo -e "[code]\nname=Visual Studio Code\nbaseurl=https://packages.microsoft.com/yumrepos/vscode\nenabled=1\ngpgcheck=1\ngpgkey=https://packages.microsoft.com/keys/microsoft.asc" | sudo tee /etc/yum.repos.d/vscode.repo > /dev/null
dnf check-update
sudo dnf install -y code
