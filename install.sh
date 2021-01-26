#!/bin/bash

set -e # Exit on error

# Create symbolic links
mkdir -p $HOME/.config
rm -rf $HOME/.config/karabiner
mkdir -p $HOME/.config/karabiner
ln -sf $(pwd)/karabiner.json $HOME/.config/karabiner/karabiner.json
rm -rf $HOME/.config/nvim
mkdir -p $HOME/.config/nvim
ln -sf $(pwd)/nvim $HOME/.config/nvim
ln -sf $(pwd)/cmus $HOME/.config/cmus/autosave
ln -sf $(pwd)/prettierrc.json $HOME/prettierrc
ln -sf $(pwd)/tmux.conf $HOME/tmux.conf
ln -sf $(pwd)/zshrc $HOME/zshrc

# Change key repeat variable
defaults write -g InitialKeyRepeat -int 15  # normal minimum is 15 (225 ms)
defaults write -g KeyRepeat -int 1          # normal minimum is 2 (30 ms)

# Homebrew
bash -c "\$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
for formula in $(cat brew/leaves); do
    brew install "$formula"
done
for cask in $(cat brew/casks); do
    brew install "$cask"
done

# Moom
defaults import com.manytricks.Moom Moom.plist

echo Restart for settings to apply
