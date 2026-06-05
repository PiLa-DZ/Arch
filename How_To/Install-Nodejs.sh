sudo pacman -S fnm

nvim ~/.zshrc
eval "$(fnm env --use-on-cd)"

source ~/.zshrc

fnm install --lts

npm config get prefix
