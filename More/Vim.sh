# Vim =====================================================================
## Step 1 =================================================================
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
## Step 2 =================================================================
cp Configs/vimrc ~/.vimrc
## Step 3 =================================================================
:PlugInstall

