#!/bin/bash

# Get the directory where this script is located
DOTFILES_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

echo "Creating symbolic links from $DOTFILES_DIR to your home directory..."

# Function to create symlink with backup
create_symlink() {
    local source="$1"
    local target="$2"
    
    if [[ ! -f "$source" ]]; then
        echo "Warning: Source file $source does not exist, skipping..."
        return 1
    fi
    
    if [[ -L "$target" ]]; then
        echo "Removing existing symlink: $target"
        rm "$target"
    elif [[ -f "$target" ]]; then
        echo "Backing up existing file: $target -> $target.backup"
        mv "$target" "$target.backup"
    fi
    
    echo "Creating symlink: $source -> $target"
    ln -s "$source" "$target"
}

# Create symlinks
create_symlink "$DOTFILES_DIR/zshrc" "$HOME/.zshrc"
create_symlink "$DOTFILES_DIR/gitconfig" "$HOME/.gitconfig"

echo "Done!"
