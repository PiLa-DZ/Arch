# Configs ================================================
mkdir ~/.config
cp -r Configs/i3 ~/.config
cp Configs/bashrc ~/.bashrc
cp -r Configs/kitty ~/.config
git config --global user.name "Nabil"
git config --global user.email "Nabil@gmail.com"

# Display Server =========================================
sudo pacman -Sy
sudo pacman -S xorg-server xorg-xinit xorg-xinput xorg-xbacklight xsel xclip

# Display Manager ========================================
sudo pacman -S lightdm lightdm-gtk-greeter

# Window Manager =========================================
sudo pacman -S i3-wm i3status

# Terminals ==============================================
sudo pacman -S xfce4-terminal kitty

# Font ===================================================
sudo pacman -S ttf-hack-nerd 

# AUR Helper =============================================
sudo pacman -S --needed base-devel git
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si

# Browsers ===============================================
sudo pacman -S firefox
yay -S brave-bin

# Gvim ===================================================
sudo pacman -Rns vim
sudo pacman -S gvim

# TouchPad Config ========================================
sudo cp Configs/90-thuchpad.conf /etc/X11/xorg.conf.d/

# Audio ==================================================
sudo pacman -S --noconfirm pulseaudio
sudo pacman -S --noconfirm alsa-utils
sudo pacman -S --noconfirm pavucontrol

# Open SSH ===============================================
sudo pacman -S openssh
sudo systemctl enable sshd
sudo systemctl start sshd

# DELL Laptop ============================================
sudo pacman -S --noconfirm broadcom-wl
sudo pacman -S --noconfirm xf86-video-intel

# Install Steam ==========================================
sudo vim /etc/pacman.conf
#[multilib]
#Include = /etc/pacman.d/mirrorlist
sudo pacman -Syu
sudo pacman -S steam

# Enable Display Manager =================================
sudo systemctl enable lightdm
sudo systemctl start lightdm
