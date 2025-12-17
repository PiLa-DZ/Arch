# eza  =====================================================================
sudo pacman -S eza
eza --colour=always --long --git --no-filesize --icons=always --no-time --no-user --no-permissions
eza --tree --level=2
alias ll='eza --colour=always --long --no-filesize --icons=always --no-time --no-user --no-permissions --tree --level=1'
alias lh='eza --colour=always --long --no-filesize --icons=always --no-time --no-user --no-permissions -a --tree --level=1'
