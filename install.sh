set -e      # Exit on error.

# Compile terminfo.
tic terminfo

# Install tmux TPM.
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

# Set key repeat timing.
defaults write -g InitialKeyRepeat -int 13      # normal minimum is 15 (225 ms)
defaults write -g KeyRepeat -int 1              # normal minimum is 2 (30 ms)

# Disable annoying popup "<app> quit unexpectedly".
defaults write com.apple.CrashReporter DialogType none

# Install homebrew.
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Install formulae in Brewfile.
brew bundle install

# Create symbolic links.
stow bin cmus git karabiner prettier tmux vim zsh

# Source Moom.
defaults import com.manytricks.Moom Moom.plist

echo 'Restart for some settings (key repeat) to apply'
