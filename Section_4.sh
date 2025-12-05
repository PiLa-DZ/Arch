# Step [1] ===============================================
cp Configs/i3 ~/.config
cp Configs/bashrc ~/.bashrc
git config --global user.name "Nabil"
git config --global user.email "Nabil@gmail.com"

# Step [2] ===============================================
sudo pacman -Sy
sudo pacman -S xorg-server xsel xclip
sudo pacman -S ly
sudo pacman -S i3-wm i3status
sudo pacman -S xfce4-terminal
sudo pacman -S ttf-hack-nerd 
sudo pacman -S firefox
sudo systemctl enable ly
sudo systemctl start ly

# Step [3] ===============================================
sudo cp Configs/90-thuchpad.conf /etc/X11/xorg.conf.d/
# Audio
sudo pacman -S --noconfirm pulseaudio
sudo pacman -S --noconfirm alsa-utils
sudo pacman -S --noconfirm pavucontrol
# Open SSH
sudo pacman -S openssh
sudo systemctl enable sshd
sudo systemctl start sshd
# DELL Laptop
sudo pacman -S --noconfirm broadcom-wl
sudo pacman -S --noconfirm xf86-video-intel

# [More] ===============================================
# Neovim
suod pacman -S neovim
sudo pacman -S lua
# Tools
sudo pacman -S btop
sudo pacman -S yazi
sudo pacman -S cpupower
sudo pacman -S wget
sudo pacman -S curl
sudo pacman -S zip unxip
sudo pacman -S man
sudo pacman -S git
sudo pacman -S fastfetch











