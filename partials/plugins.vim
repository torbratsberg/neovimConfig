call plug#begin('~/.config/nvim/plugged')

" Telescope
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'

" Functionality
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'
Plug 'easymotion/vim-easymotion'
Plug 'hoob3rt/lualine.nvim'

" Themes and syntax
Plug 'torbratsberg/vim-highlight-word'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'mxw/vim-jsx'
Plug 'morhetz/gruvbox'
Plug 'ntk148v/vim-horizon'
Plug 'arcticicestudio/nord-vim'

call plug#end()
