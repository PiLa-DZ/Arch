call plug#begin('~/.vim/plugged')
Plug 'tpope/vim-sensible'   " Example: Sensible defaults for Vim
Plug 'ghifarit53/tokyonight-vim' " ColorScheme
Plug 'preservim/nerdtree', { 'on': 'NERDTreeToggle' } " File Manager
Plug 'pangloss/vim-javascript' " Add a dedicated syntax plugin for modern JS/TS
Plug 'vim-airline/vim-airline' " Add vim-airline for a beautiful status line
Plug 'vim-airline/vim-airline-themes' " Optional: For more color theme support
Plug 'tpope/vim-commentary' " Add vim-commentary for easy commenting/uncommenting
Plug 'junegunn/fzf.vim', { 'on': ['Files', 'Rg', 'Buffers'] }
Plug 'Raimondi/delimitMate' " Auto Close Bracits
Plug 'mbbill/undotree'
call plug#end()

set termguicolors " Essential for modern color schemes in Vim
colorscheme tokyonight "colorschem tokyonight

" Activate vim-airline
let g:airline_powerline_fonts = 1 " Requires patched fonts for stylish arrows (optional)
let g:airline_theme = 'tokyonight' " Tries to use Tokyo Night theme (or a similar color)
" let g:airline#extensions#tabline#enabled = 1 " Show tabs/buffers in the top bar

let mapleader = "\<Space>"
map <leader>e :NERDTreeToggle<CR>
let NERDTreeShowHidden=1 " Always show the cursor in the NERDTree window

nnoremap <leader>ff :Files<CR>
nnoremap <leader>fg :Rg<CR>
nnoremap <leader>fb :Buffers<CR>

" Undo Tree ------------------------------------------------------
if has("persistent_undo")
    let target_path = expand('~/.undodir')
    if !isdirectory(target_path)
        call mkdir(target_path, "p", 0700)
    endif
    let &undodir = target_path
    set undofile
endif
nnoremap <leader>u :UndotreeToggle<CR>
" ----------------------------------------------------------------

" Auto-jump to last edited position ------------------------------
function! RestoreCursorPosition()
    if line("'\"") > 1 && line("'\"") <= line("$")
        execute "normal! g`\""
    endif
endfunction
autocmd BufReadPost * call RestoreCursorPosition()
" ----------------------------------------------------------------

set number relativenumber
set showcmd ignorecase nowrap
set tabstop=4 shiftwidth=4
set splitright splitbelow
set hlsearch incsearch
set clipboard=unnamed
set scrolloff=0
set ttimeout notimeout
set nocompatible
set clipboard=unnamedplus
autocmd VimEnter * normal! zz

nnoremap <F5> a<C-R>=strftime("%d/%m/%Y")<CR><Esc>
