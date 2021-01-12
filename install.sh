#!/bin/bash

# Create symbolic links
mkdir -p ~/.config/karabiner
ln -sf $(pwd)/karabiner.json ~/.config/karabiner/karabiner.json
mkdir -p ~/.config/nvim
ln -sf $(pwd)/nvim ~/.config/nvim
ln -sf $(pwd)/prettierrc.json ~/.prettierrc
ln -sf $(pwd)/tmux.conf ~/.tmux.conf
ln -sf $(pwd)/zshrc ~/.zshrc

# Change key repeat variable
defaults write -g InitialKeyRepeat -int 15  # normal minimum is 15 (225 ms)
defaults write -g KeyRepeat -int 1          # normal minimum is 2 (30 ms)

# Homebrew
# bash -c "\$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
for formula in $(cat brew/leaves); do
    brew install "$formula"
done
for cask in $(cat brew/casks); do
    brew install "$cask"
done

# Moom
defaults import com.manytricks.Moom Moom.plist

echo Restart for settings to apply
