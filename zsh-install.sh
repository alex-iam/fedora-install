echo ">>>ZSH"
sudo dnf install -y zsh util-linux
chsh -s $(which zsh)
mkdir -p ~/.zsh
git clone https://github.com/zsh-users/zsh-autosuggestions ~/.zsh/zsh-autosuggestions
cp ./own.zshrc ~/.zshrc
