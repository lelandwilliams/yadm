
-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- Provides telesecope, a fuzzy finder, 2/16/2023
  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.1',
	  -- or                            , branch = '0.1.x',
	  requires = { {'nvim-lua/plenary.nvim'} }
  }

  -- rose-pine background colors
  use({
	  'rose-pine/neovim',
	  as = 'rose-pine',
	  config = function()
		  require("rose-pine").setup({
			  dark_variant = 'moon'
		  })
		  vim.cmd('colorscheme rose-pine')
	  end
  })

  -- more colorschemes
  use('carakan/new-railscasts-theme')
  use 'savq/melange-nvim'
  use 'gerardbm/vim-atomic'
  use 'sainnhe/everforest'


  -- Treesitter provides syntax parsing
  use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
  use('nvim-treesitter/playground')
  -- Harpoon provides file bookmarks. 2/21/23
  use('theprimeagen/harpoon')
  use('mbbill/undotree')
  -- fugitive handles git commands
  use('tpope/vim-fugitive')
  -- vimwiki
  use'vimwiki/vimwiki'

  -- lsp-zero
  use {
	  'VonHeikemen/lsp-zero.nvim',
	  branch = 'v1.x',
	  requires = {
		  -- LSP Support
		  {'neovim/nvim-lspconfig'},             -- Required
		  {'williamboman/mason.nvim'},           -- Optional
		  {'williamboman/mason-lspconfig.nvim'}, -- Optional

		  -- Autocompletion
		  {'hrsh7th/nvim-cmp'},         -- Required
		  {'hrsh7th/cmp-nvim-lsp'},     -- Required
		  {'hrsh7th/cmp-buffer'},       -- Optional
		  {'hrsh7th/cmp-path'},         -- Optional
		  {'saadparwaiz1/cmp_luasnip'}, -- Optional
		  {'hrsh7th/cmp-nvim-lua'},     -- Optional

		  -- Snippets
		  {'L3MON4D3/LuaSnip'},             -- Required
		  {'rafamadriz/friendly-snippets'}, -- Optional
	  }
  } 
end)
