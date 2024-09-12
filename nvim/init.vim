syntax on
set number

call plug#begin()
Plug 'wakatime/vim-wakatime'

"explorer plugin
Plug 'nvim-tree/nvim-tree.lua'
Plug 'nvim-tree/nvim-web-devicons'
"finder plugin
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
" git plugin
Plug 'lewis6991/gitsigns.nvim'
" LSP Server Configurer
Plug 'williamboman/mason.nvim'
Plug 'williamboman/mason-lspconfig.nvim'
Plug 'neovim/nvim-lspconfig'
" LSP autocomplition
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/nvim-cmp'

Plug 'L3MON4D3/LuaSnip'
Plug 'saadparwaiz1/cmp_luasnip'
" Formatter
Plug 'nvimtools/none-ls.nvim'
Plug 'jay-babu/mason-null-ls.nvim'
" Color schemes
Plug 'themercorp/themer.lua'

call plug#end()

lua require('_init')
