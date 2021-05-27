#!/bin/bash

set -e # Exit on error

cd $(pwd)

# Create symbolic links
mkdir -p $HOME/.config

rm -rf $HOME/.config/karabiner
mkdir -p $HOME/.config/karabiner
ln -s $(pwd)/karabiner.json $HOME/.config/karabiner/karabiner.json

rm -rf $HOME/.config/nvim
ln -s $(pwd)/nvim $HOME/.config/nvim

rm -rf $HOME/.prettierrc
ln -s $(pwd)/prettierrc.json $HOME/.prettierrc

rm -rf $HOME/.tmux.conf
ln -s $(pwd)/.tmux.conf $HOME/.tmux.conf

rm -rf $HOME/.zshrc
ln -s $(pwd)/.zshrc $HOME/.zshrc

# Change key repeat variable
defaults write -g InitialKeyRepeat -int 15  # normal minimum is 15 (225 ms)
defaults write -g KeyRepeat -int 1          # normal minimum is 2 (30 ms)

# Disable annoying popup "<app> quit unexpectedly"
defaults write com.apple.CrashReporter DialogType none

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
