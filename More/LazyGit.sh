sudo pacman -S lazygit git-delta
cp Configs/lazygit ~/.config/lazygit

# Add this to Git Config
vim ~/.gitconfig
[core]
    pager = delta
[interactive]
    diffFilter = delta --color-only
[delta]
    navigate = true
    light = false
    side-by-side = true
    line-numbers = true
    features = catppuccin-mocha
[merge]
    conflictstyle = diff3
[diff]
    colorMoved = default

