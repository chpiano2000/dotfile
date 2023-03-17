local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'
  use {
    'nvim-tree/nvim-tree.lua',
    requires = {
      'nvim-tree/nvim-web-devicons', -- optional, for file icons
    }
  }
  use "nvim-lualine/lualine.nvim"
  use "tpope/vim-surround"
  use("numToStr/Comment.nvim")
  use "kyazdani42/nvim-web-devicons"
  use {
    "nvim-telescope/telescope-fzf-native.nvim",
    run = "make"
  }
  use {
    "nvim-telescope/telescope.nvim",
    branch = "0.1.x",
    requires = {
     {'nvim-lua/plenary.nvim'},
     {'nvim-lua/popup.nvim'},
     {'nvim-treesitter/nvim-treesitter'},
     {'nvim-telescope/telescope-fzf-native.nvim', run = 'make' },
     {'nvim-telescope/telescope-symbols.nvim'},
   }
  }

  -- autocompletion
	use("hrsh7th/nvim-cmp") -- completion plugin
	use("hrsh7th/cmp-buffer") -- source for text in buffer
	use("hrsh7th/cmp-path") -- source for file system paths
  use("onsails/lspkind.nvim") -- vs-code like icons for autocompletion

	-- snippets
	use("L3MON4D3/LuaSnip") -- snippet engine
	use("saadparwaiz1/cmp_luasnip") -- for autocompletion
	use("rafamadriz/friendly-snippets") -- useful snippets

  -- managing & installing lsp servers, linters & formatters
	use("williamboman/mason.nvim") -- in charge of managing lsp servers, linters & formatters
	use("williamboman/mason-lspconfig.nvim") -- bridges gap b/w mason & lspconfig

	-- configuring lsp servers
	use("neovim/nvim-lspconfig") -- easily configure language servers
  use("hrsh7th/cmp-nvim-lsp") -- for autocompletion
	use("tami5/lspsaga.nvim") -- enhanced lsp uis
  -- treesitter configuration
	use({
		"nvim-treesitter/nvim-treesitter",
		run = function()
			require("nvim-treesitter.install").update({ with_sync = true })
		end,
	})

	-- auto closing
	use("windwp/nvim-autopairs") -- autoclose parens, brackets, quotes, etc...
	use({ "windwp/nvim-ts-autotag", after = "nvim-treesitter" }) -- autoclose tags
  use({'crispgm/nvim-tabline'})
  use('voldikss/vim-floaterm')

  use("shaunsingh/solarized.nvim")

  use({'stevearc/aerial.nvim'})
  
  use("ThePrimeagen/harpoon")

  if packer_bootstrap then
    require('packer').sync()
  end
end)
