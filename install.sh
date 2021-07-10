set -e      # Exit on error.

# Set key repeat timing.
defaults write -g InitialKeyRepeat -int 15      # normal minimum is 15 (225 ms)
defaults write -g KeyRepeat -int 1              # normal minimum is 2 (30 ms)

# Disable annoying popup "<app> quit unexpectedly".
defaults write com.apple.CrashReporter DialogType none

# Source Moom.
defaults import com.manytricks.Moom Moom.plist

# Install formulae in Brewfile.
brew bundle

# Create symbolic links.
stow bin cmus git karabiner prettier tmux vim zsh

echo 'Restart for some settings (key repeat) to apply'
