set -e      # Exit on error

# Set key repeat timing.
defaults write -g InitialKeyRepeat -int 15  # normal minimum is 15 (225 ms)
defaults write -g KeyRepeat -int 1          # normal minimum is 2 (30 ms)

# Disable annoying popup "<app> quit unexpectedly"
defaults write com.apple.CrashReporter DialogType none

# Source Moom.
defaults import com.manytricks.Moom moom/Moom.plist

# Install Homebrew formulas.
bash -c "\$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
for formula in $(cat brew/leaves); do
    brew install "$formula"
done
for cask in $(cat brew/casks); do
    brew install "$cask"
done

# Create symlinks.
stow cmus git karabiner prettier tmux vim zsh

echo Restart for some settings (key repeat) to apply
