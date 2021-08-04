#!/bin/sh

set -e

tic terminfo

defaults write -g InitialKeyRepeat -int 14                  # normal minimum is 15 (225 ms)
defaults write -g KeyRepeat -int 1                          # normal minimum is 2 (30 ms)
defaults write com.apple.CrashReporter DialogType none      # Disable annoying popup "<app> quit unexpectedly"
defaults import com.manytricks.Moom Moom.plist

# Homebrew
if [ ! -d /usr/local/Homebrew ]; then
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi
brew bundle install

# Tmux TPM
if [ ! -d ~/.tmux/plugins/tpm ]; then
    git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
fi

# Set symbolic links
for f in $(ls -a | grep '^\.' | grep -v '^\.\.?$' | grep -v '^\.(git|gitignore)$'); do
    rm -rf ~/$f
    ln -s ~/dotfiles/$f ~/$f
done
