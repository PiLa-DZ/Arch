# Gvim ===================================================
sudo pacman -Rns vim
sudo pacman -S gvim curl
echo "*** Delete vim Done"
echo "*** Install Gvim Done"

# Vim Plugns ==============================================================
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
echo "*** Clone Vim Plugns Done"

echo "*** TODO: Enter vim and run :PlugInstall"
