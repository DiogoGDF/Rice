-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.1',
	  -- or                            , branch = '0.1.x',
	  requires = { {'nvim-lua/plenary.nvim'} }
  }
  -- use { "ellisonleao/gruvbox.nvim" }
  use { 'navarasu/onedark.nvim' }
  use ( 'nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
  use ( 'nvim-treesitter/playground' )
  use ( 'ThePrimeagen/harpoon' )
  use ( 'mbbill/undotree' )
  use ( 'tpope/vim-fugitive' )
  use {
	  'VonHeikemen/lsp-zero.nvim',
	  branch = 'v2.x',
	  requires = {
		  -- LSP Support
		  {'neovim/nvim-lspconfig'},             -- Required
		  {                                      -- Optional
		  'williamboman/mason.nvim',
		  run = function()
			  pcall(vim.cmd, 'MasonUpdate')
		  end,
	  },
	  {'williamboman/mason-lspconfig.nvim'}, -- Optional

	  -- Autocompletion
	  {'hrsh7th/nvim-cmp'},     -- Required
	  {'hrsh7th/cmp-nvim-lsp'}, -- Required
	  {'L3MON4D3/LuaSnip'},     -- Required
  	  }
	}
    use ( 'lilydjwg/colorizer' )
    use ( 'alvan/vim-closetag' )
    use ('jiangmiao/auto-pairs' )
    use ('tpope/vim-surround' )
    use {
          'nvim-lualine/lualine.nvim',
            requires = { 'nvim-tree/nvim-web-devicons', opt = true }
    }
    use ( 'junegunn/goyo.vim' )
    -- Lua
    use {
        "folke/zen-mode.nvim",
        config = function()
            require("zen-mode").setup {
                -- your configuration comes here
                -- or leave it empty to use the default settings
                -- refer to the configuration section below
            }
        end
    }
    use ( 'dhruvasagar/vim-table-mode' )
end)
