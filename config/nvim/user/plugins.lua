local fn = vim.fn

-- Automatically install packer
local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
	PACKER_BOOTSTRAP = fn.system({
		"git",
		"clone",
		"--depth",
		"1",
		"https://github.com/wbthomason/packer.nvim",
		install_path,
	})
	print("Installing packer close and reopen Neovim...")
	vim.cmd([[packadd packer.nvim]])
end

-- Autocommand that reloads neovim whenever you save the plugins.lua file
vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]])

-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
	return
end

-- Have packer use a popup window
packer.init({
	display = {
		open_fn = function()
			return require("packer.util").float({ border = "rounded" })
		end,
	},
})

-- Install your plugins here
return packer.startup(function(use)
  use { "wbthomason/packer.nvim" }
  use { "nvim-lua/plenary.nvim" }
  use { "windwp/nvim-autopairs" }
  use { "numToStr/Comment.nvim" }
  use { "JoosepAlviste/nvim-ts-context-commentstring" }
  use { "kyazdani42/nvim-web-devicons" }
  use { "kyazdani42/nvim-tree.lua" }
  use { "akinsho/bufferline.nvim" }
	use { "moll/vim-bbye" }
  use { "nvim-lualine/lualine.nvim" }
  use { "akinsho/toggleterm.nvim" }
  use { "ahmedkhalf/project.nvim" }
  use { "lewis6991/impatient.nvim" }
  use { "lukas-reineke/indent-blankline.nvim" }
  use { "goolord/alpha-nvim" }
	use {"folke/which-key.nvim"}
	use { "nvim-telescope/telescope.nvim" }
	use { "nvim-treesitter/nvim-treesitter" }
	use { "lewis6991/gitsigns.nvim" }
  use { "junegunn/goyo.vim" }
  use { "junegunn/limelight.vim" }
  use ({ "iamcco/markdown-preview.nvim", run = "cd app && npm install", setup = function() vim.g.mkdp_filetypes = { "markdown" } end, ft = { "markdown" }, })
  use { "xuhdev/vim-latex-live-preview" }
  use { "p00f/nvim-ts-rainbow" }

	-- Colorschemes
  use { "LunarVim/Colorschemes"}
  use { "Mofiqul/dracula.nvim" }
  use { "Mofiqul/vscode.nvim" }
  use { "folke/tokyonight.nvim" }
  use { "EdenEast/nightfox.nvim" }
  use { "tanvirtin/monokai.nvim" }
  use { "catppuccin/nvim", as = "catppuccin" }

	-- Cmp 
  use { "hrsh7th/nvim-cmp" } -- The completion plugin
  use { "hrsh7th/cmp-buffer" }
  use { "hrsh7th/cmp-path" }
	use { "saadparwaiz1/cmp_luasnip" }
	use { "hrsh7th/cmp-nvim-lsp" }
	use { "hrsh7th/cmp-nvim-lua" }
  use { "hrsh7th/cmp-emoji" }

	-- Snippets
  use { "L3MON4D3/LuaSnip" }
  use { "rafamadriz/friendly-snippets" }

	-- LSP
	use { "neovim/nvim-lspconfig" }
  use { "williamboman/mason.nvim" }
  use { "williamboman/mason-lspconfig.nvim" }
	use { "jose-elias-alvarez/null-ls.nvim" }
  use { "RRethy/vim-illuminate" }

  -- Copilot Lua
  -- use "github/copilot.vim"
  use {
    "zbirenbaum/copilot.lua",
    event = "VimEnter",
    config = function()
      vim.defer_fn(function()
        require("copilot").setup({
          filetypes = {
            yaml = false,
            markdown = false,
            help = false,
            gitcommit = false,
            gitrebase = false,
            hgcommit = false,
            svn = false,
            cvs = false,
            ["."] = false,
  },
        })
      end, 100)
    end,
  }

  -- Cmp Copilot
  use {
    "zbirenbaum/copilot-cmp",
    after = { "copilot.lua" },
    config = function ()
      require("copilot_cmp").setup()
    end
  }

	-- Automatically set up your configuration after cloning packer.nvim
	-- Put this at the end after all plugins
	if PACKER_BOOTSTRAP then
		require("packer").sync()
	end
end)
