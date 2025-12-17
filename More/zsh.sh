# Zsh =====================================================================
sudo pacman -S zsh zsh-completions
sudo pacman -S curl wget git
sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
cp Configs/zshrc ~/.zshrc
chsh -s $(which zsh)
# reboot


