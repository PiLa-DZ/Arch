# Step [1] ===============================================
mkdir ~/.config
cp -r Configs/i3 ~/.config
cp Configs/bashrc ~/.bashrc
cp -r Configs/kitty ~/.config
git config --global user.name "Nabil"
git config --global user.email "Nabil@gmail.com"

# Step [2] ===============================================
sudo pacman -Sy
sudo pacman -S xorg-server xorg-xinit xorg-xinput xorg-xbacklight xsel xclip
sudo pacman -S ly
sudo pacman -S i3-wm i3status
sudo pacman -S xfce4-terminal kitty
sudo pacman -S ttf-hack-nerd 
sudo pacman -S firefox
sudo systemctl enable ly
sudo systemctl start ly

# Step [3] ===============================================
# Vim --> Gvim
sudo pacman -Rns vim
sudo pacman -S gvim
# TouchPad Config
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

