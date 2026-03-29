# AUR Helper =============================================
sudo pacman -S --needed base-devel git
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
cd ..
sudo rm -rf yay
echo "*** Install AUR Helper Done"

# Browsers ===============================================
yay -S brave-bin
echo "*** Install Brave Done"

# Gvim and vim Plugins ===============================================
sudo pacman -Rns vim
sudo pacman -S gvim curl
echo "*** Delete vim Done"
echo "*** Install Gvim Done"

curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
echo "*** Clone Vim Plugns Done"

echo "*** TODO: Enter vim and run :PlugInstall"

# Tmux ===================================================================
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
echo "*** Clone Tmux plugin Done"

~/.tmux/plugins/tpm/tpm
echo "*** Run Tmux plugin Done"

echo "*** TODO: Enter Tmux and do [C+b I]"

# Zsh =====================================================================
sudo pacman -S zsh zsh-completions
echo "*** Install zsh zsh-completions Done"

sudo pacman -S curl wget git
echo "*** Install curl wget git Done"

sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
echo "*** Download ohmyzsh Done"

git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
echo "*** Clone zsh-syntax-highlighting Done"

chsh -s $(which zsh)
echo "*** Change default shell Done"

echo "*** TODO: Reboot System"

# Github SSH Key ==========================================================
mkdir -p ~/.ssh
cd ~/.ssh
ssh-keygen
cd -

# TODO: ===================================================================

echo "*** TODO: 1 --> Enter Tmux and do [C+b I]"
echo "*** TODO: 2 --> Enter vim and run :PlugInstall"
echo "*** TODO: 3 -->
sudo nvim /etc/systemd/logind.conf
    HandlePowerKey=suspend
"
echo "*** TODO: 4 --> Reboot System"
