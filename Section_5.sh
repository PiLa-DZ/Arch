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

