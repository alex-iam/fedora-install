#!/bin/bash

# Check if a font name was provided
if [ $# -eq 0 ]; then
    echo "Usage: $0 <font-name>"
    echo "Example: $0 JetBrainsMono"
    exit 1
fi

# Get the font name from the first argument
font_name="$1"

# Create a temporary directory for the download
temp_dir=$(mktemp -d)

# Change to the temporary directory
cd "$temp_dir"

# Download the archive
echo "Downloading $font_name Nerd Font..."
curl -OL "https://github.com/ryanoasis/nerd-fonts/releases/latest/download/${font_name}.tar.xz"

# Check if the download was successful
if [ $? -ne 0 ]; then
    echo "Failed to download ${font_name}.tar.xz. Please check if the font name is correct."
    cd
    rm -rf "$temp_dir"
    exit 1
fi

# Create the fonts directory if it doesn't exist
mkdir -p ~/.local/share/fonts

# Unpack the archive directly into the fonts directory
echo "Installing $font_name Nerd Font..."
tar -xf "${font_name}.tar.xz" -C ~/.local/share/fonts/

# Clean up: remove the temporary directory and downloaded archive
cd
rm -rf "$temp_dir"

echo "$font_name Nerd Font has been installed to ~/.local/share/fonts"
