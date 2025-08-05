temp_dir=$(mktemp -d)
cd "$temp_dir"
echo "Downloading Aporetic fonts..."
git clone --depth 1 https://github.com/protesilaos/aporetic

if [ $? -ne 0 ]; then
    echo "Failed to download ${font_name}.tar.xz. Please check if the font name is correct."
    cd
    rm -rf "$temp_dir"
    exit 1
fi
mkdir -p ~/.local/share/fonts
echo "Installing Aporetic fonts..."

cd aporetic

cp aporetic-sans/TTF/*.ttf ~/.local/share/fonts/
cp aporetic-sans-mono/TTF/*.ttf ~/.local/share/fonts/
cp aporetic-serif/TTF/*.ttf ~/.local/share/fonts/
cp aporetic-serif-mono/TTF/*.ttf ~/.local/share/fonts/

cd
rm -rf "$temp_dir"

echo "$font_name Aporetic fonts were installed to ~/.local/share/fonts"
