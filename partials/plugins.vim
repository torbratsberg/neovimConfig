call plug#begin('~/.config/nvim/plugged')

" Telescope
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'

" Functionality
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'tpope/vim-commentary'
Plug 'dhruvasagar/vim-table-mode'
Plug 'tpope/vim-fugitive'
Plug 'easymotion/vim-easymotion'

" Themes and syntax
Plug 'mxw/vim-jsx'
Plug 'morhetz/gruvbox'
Plug 'ntk148v/vim-horizon'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'torbratsberg/tor.nvim'
Plug 'junegunn/goyo.vim'

call plug#end()
