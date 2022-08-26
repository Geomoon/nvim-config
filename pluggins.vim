call plug#begin()

" THEMES
Plug 'projekt0n/github-nvim-theme'
Plug 'sonph/onehalf', {'rtp': 'vim/'}
Plug 'rakr/vim-one'
Plug 'drewtempelmeyer/palenight.vim'
Plug 'doums/darcula'
Plug 'dunstontc/vim-vscode-theme'
Plug 'overcache/NeoSolarized'
Plug 'EdenEast/nightfox.nvim'

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

Plug 'windwp/nvim-autopairs'
Plug 'windwp/nvim-ts-autotag'

Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
call plug#end()

