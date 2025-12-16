# [More] ===============================================

# Firefox Config
# --> about:config
full-screen-api.ignore-widgets = true

# Neovim
suod pacman -S --noconfirm neovim
sudo pacman -S --noconfirm lua
sudo pacman -S --noconfirm git
sudo pacman -S --noconfirm ttf-hack-nerd 
sudo pacman -S --noconfirm lazygit
sudo pacman -S --noconfirm nodejs npm
sudo npm install -g tree-sitter-cli
sudo pacman -S --noconfirm base-devel # For c compiler
sudo pacman -S --noconfirm curl
sudo pacman -S --noconfirm fzf
sudo pacman -S --noconfirm ripgrep
sudo pacman -S --noconfirm fd

sudo pacman -S tree-sitter
sudo npm install -g neovim
sudo pacman -S python-pynvim

sudo pacman -S ruby
sudo gem install neovim

sudo pacman -S perl
	$ cpan
	$ install Neovim::Ext
	$ exit


sudo pacman -S --noconfirm lua51
sudo pacman -S --noconfirm luarocks
sudo pacman -S imagemagick
sudo pacman -S ghostscript
sudo pacman -S tectonic
sudo pacman -S texlive-basic
sudo npm install -g @mermaid-js/mermaid-cli
## Lazyvim
git clone https://github.com/LazyVim/starter ~/.config/nvim
rm -rf ~/.config/nvim/.git
nvim

# Tools
sudo pacman -S --noconfirm btop
sudo pacman -S --noconfirm yazi
sudo pacman -S --noconfirm cpupower
sudo pacman -S --noconfirm wget
sudo pacman -S --noconfirm curl
sudo pacman -S --noconfirm zip unxip
sudo pacman -S --noconfirm man
sudo pacman -S --noconfirm git
sudo pacman -S --noconfirm fastfetch
sudo pacman -S --noconfirm tree

sudo pacman -S --noconfirm python3
sudo pacman -S --noconfirm nodejs
sudo pacman -S --noconfirm npm

# Install Yay helper
sudo pacman -S --needed base-devel git
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si

sudo pacman -S --noconfirm rofi-emoji
sudo pacman -S --noconfirm noto-fonts-emoji
sudo pacman -S --noconfirm papirus-icon-theme
# Arabic Fonts
sudo pacman -S --noconfirm noto-fonts noto-fonts-cjk ttf-dejavu ttf-liberation
# Keyboard Layout
sudo pacman -S --noconfirm xorg-setxkbmap
sudo pacman -S --noconfirm xkeyboard-config

# Vim =====================================================================
## Step 1 =================================================================
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
## Step 2 =================================================================
cp Configs/vimrc ~/.vimrc
## Step 3 =================================================================
:PlugInstall

# Zsh =====================================================================
sudo pacman -S zsh zsh-completions
sudo pacman -S curl wget git
sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
cp Configs/zshrc ~/.zshrc
chsh -s $(which zsh)
# reboot

# Yazi ====================================================================
sudo pacman -S yazi
cd -r Configs/yazi ~/.config
# ya pkg add dangooddd/kanagawa
# ya pkg add yazi-rs/plugins:full-border

# fzf =====================================================================
sudo pacman -S fzf
sudo pacman -S bat
sudo pacman -S eza

fzf --height 40% --layout reverse --border
fzf --preview "bat --color=always {}" --style full --height 50%

source <(fzf --zsh)
alias ff='vim $(fzf --preview "bat --color=always {}" --style full)'
alias fd='cd $(find . -type d | fzf --preview "eza --colour=always --long --git --no-filesize --icons=always --no-time --no-user --no-permissions {}" --style full)'
alias fe='cd $(find . -type d | fzf --preview "tree -C {}" --style full)'

# eza  =====================================================================
sudo pacman -S eza
eza --colour=always --long --git --no-filesize --icons=always --no-time --no-user --no-permissions
eza --tree --level=2
alias ll='eza --colour=always --long --no-filesize --icons=always --no-time --no-user --no-permissions --tree --level=1'
alias lh='eza --colour=always --long --no-filesize --icons=always --no-time --no-user --no-permissions -a --tree --level=1'
