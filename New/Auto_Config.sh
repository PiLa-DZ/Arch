# Configs =============================================================================
# Kitty (Terminal)
# i3 (Window Manager)
# Rofi (App Launcher)
# Dunst (Notifications)
# Yazi (File Manager)
# Lazygit (Git App)
echo "*** Copy .config"
cp -r .config ~/

# Xprofile (Startup file)
echo "*** Copy .xprofile"
cp .xprofile ~/.xprofile

# Bash Script
echo "*** Copy .bashrc"
cp .bashrc ~/.bashrc
echo "*** Copy .bash_profile"
cp .bash_profile ~/.bash_profile

# ZSH
echo "*** Copy .zshrc"
cp .zshrc ~/.zshrc

# Git Config
echo "*** Copy .gitconfig"
cp .gitconfig ~/.gitconfig

# Gvim
echo "*** Copy .vimrc"
cp .vimrc ~/.vimrc

# Tmux
echo "*** Copy .tmux.conf"
cp .tmux.conf ~/.tmux.conf

# TouchPad Config
echo "*** Copy .90-thuchpad.conf"
sudo cp 90-thuchpad.conf /etc/X11/xorg.conf.d/

# Settings ============================================================================
# Open SSH
echo "*** enable ssh"
sudo systemctl enable sshd
echo "*** start ssh"
sudo systemctl start sshd

# Chnge Default Image Viewer
echo "*** default image Viewer"
xdg-mime default sxiv.desktop image/png
xdg-mime default sxiv.desktop image/jpg

# Enable Reflector
echo "*** Set mirrorlist"
sudo reflector --save /etc/pacman.d/mirrorlist --country Germany --latest 20 -p https
echo "*** enable reflector"
sudo systemctl enable reflector.service
echo "*** start reflector"
sudo systemctl start reflector.service
echo "*** enable timer reflector"
sudo systemctl enable reflector.timer
echo "*** start timer reflector"
sudo systemctl start reflector.timer
