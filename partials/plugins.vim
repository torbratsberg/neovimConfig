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
Plug 'diepm/vim-rest-console'

" Themes and syntax
Plug 'kyazdani42/nvim-web-devicons'
Plug 'mxw/vim-jsx'
Plug 'posva/vim-vue'
Plug 'ntk148v/vim-horizon'
Plug 'junegunn/seoul256.vim'

call plug#end()
