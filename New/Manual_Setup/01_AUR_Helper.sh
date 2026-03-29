# AUR Helper =============================================
sudo pacman -S --needed base-devel git
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
cd ..
echo "*** Install AUR Helper Done"
