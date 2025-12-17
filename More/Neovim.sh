# Neovim ===============================================
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

