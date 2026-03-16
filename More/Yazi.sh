# Yazi ====================================================================
sudo pacman -S yazi
cp -r Configs/yazi ~/.config

ya pkg add yazi-rs/plugins:full-border

# Optional (but recommended)
sudo pacman -S ffmpeg --noconfirm
sudo pacman -S ffmpegthumbnailer --noconfirm
sudo pacman -S 7zip --noconfirm
sudo pacman -S jq --noconfirm
sudo pacman -S poppler poppler-data --noconfirm
sudo pacman -S fd --noconfirm
sudo pacman -S ripgrep --noconfirm
sudo pacman -S fzf --noconfirm
sudo pacman -S zoxide --noconfirm
sudo pacman -S resvg --noconfirm
sudo pacman -S imagemagick --noconfirm
sudo pacman -S xclip --noconfirm
sudo pacman -S wl-clipboard --noconfirm
sudo pacman -S xsel --noconfirm

# NOTE:
# ⚠️ Crucial Step: Activating Zoxide
# Unlike the other tools, zoxide needs to be "hooked" into your shell to start learning your habits.
#
# If you are using Bash (edit ~/.bashrc):
eval "$(zoxide init bash)"
# If you are using Zsh (edit ~/.zshrc):
eval "$(zoxide init zsh)"
