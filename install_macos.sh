#!/bin/sh

set -e

rm -rf ~/.terminfo
tic tmux-256color.terminfo

defaults write -g InitialKeyRepeat -int 14			# normal minimum is 15 (225 ms)
defaults write -g KeyRepeat -int 1				# normal minimum is 2 (30 ms)
defaults write com.apple.CrashReporter DialogType none		# Disable annoying popup "<app> quit unexpectedly"
defaults import com.manytricks.Moom Moom.plist

# Homebrew
if [ ! -d /usr/local/Homebrew ]; then
	/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi
brew bundle install

# Set symbolic links
for f in $(ls -a | grep '^\.' | grep -v '^\.\.?$' | grep -v '^\.(git|gitignore)$'); do
	rm -rf ~/$f
	ln -s ~/dotfiles/$f ~/$f
done

# Link bin directory
rm -rf ~/bin; mkdir ~/bin
cd bin
for f in *; do
	ln -s ~/dotfiles/bin/$f ~/bin/$f
done
