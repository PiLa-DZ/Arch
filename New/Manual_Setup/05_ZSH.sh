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
# reboot
