# My personal dotfiles

## Setup symbollic links

```shell
git clone git@github.com:bbriano/dotfiles.git ~/.dotfiles
ln -s ~/.dotfiles/nvim ~/.config/nvim
ln -s ~/.dotfiles/nvim/init.vim ~/.vimrc
ln -s ~/.dotfiles/tmux.conf ~/.tmux.conf
ln -s ~/.dotfiles/zshrc ~/.zshrc
```

## Colortheme maker tool

https://themer.dev/?activeColorSet=dark&colors.dark.shade0=%231B1F27&colors.dark.shade7=%23D4D4D4&colors.dark.accent0=%23ec5e66&colors.dark.accent2=%23fac862&colors.dark.accent1=%23ff8a47&colors.dark.accent3=%2399c793&colors.dark.accent4=%235fb3b2&colors.dark.accent5=%236699cb&colors.dark.accent6=%23c593c4&colors.dark.accent7=%23c593c4&calculateIntermediaryShades.dark=true

### iTerm

1. Launch iTerm
2. Press `command`-`I` to open the iTerm preferences
3. Choose Colors > Color Presets... > Import... and choose the generated theme file (`iTerm/themer-iterm-dark.itermcolors`)

