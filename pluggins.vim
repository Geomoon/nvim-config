call plug#begin()

" THEMES
Plug 'projekt0n/github-nvim-theme'

" NERD TREE
Plug 'scrooloose/nerdtree'
Plug 'ryanoasis/vim-devicons'
Plug 'airblade/vim-gitgutter'

" TABS
Plug 'kyazdani42/nvim-web-devicons'
Plug 'romgrk/barbar.nvim'

" INTELLISENSE
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" FILE SEARCH
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.0' }

Plug 'nvim-lualine/lualine.nvim'

Plug 'norcalli/nvim-colorizer.lua'

Plug 'windwp/nvim-autopairs'
Plug 'windwp/nvim-ts-autotag'

Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

call plug#end()

