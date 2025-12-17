# fzf =====================================================================
sudo pacman -S fzf
sudo pacman -S bat
sudo pacman -S eza

fzf --height 40% --layout reverse --border
fzf --preview "bat --color=always {}" --style full --height 50%

source <(fzf --zsh)
alias ff='vim $(fzf --preview "bat --color=always {}" --style full)'
alias fd='cd $(find . -type d | fzf --preview "eza --colour=always --long --git --no-filesize --icons=always --no-time --no-user --no-permissions {}" --style full)'
alias fe='cd $(find . -type d | fzf --preview "tree -C {}" --style full)'

