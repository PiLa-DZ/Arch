mv ~/.config/nvim{,.bak}
mv ~/.local/share/nvim{,.bak}
mv ~/.local/state/nvim{,.bak}
mv ~/.cache/nvim{,.bak}
git clone https://github.com/LazyVim/starter ~/.config/nvim
rm -rf ~/.config/nvim/.git
nvim

# =============================================
# Enable the DAP Extra
:LazyExtras
# Find
dap.core and
lang.typescript
# Press x to enable them.

# =============================================
# Install the Adapter via Mason
:Mason
# Press 2 to go to the DAP tab.
# Search for
js-debug-adapter
# Press i to install it.

# =============================================
