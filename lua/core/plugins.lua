local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
	-- essential stuffs
	"nvim-lua/plenary.nvim",
	"folke/neodev.nvim",
	"nvim-lua/popup.nvim",
	"MunifTanjim/nui.nvim",

	-- text editting
	"easymotion/vim-easymotion",
	"numToStr/Comment.nvim",
	{
		"kylechui/nvim-surround",
		version = "*",
		event = "VeryLazy",
	},

	-- language support
	"neovim/nvim-lspconfig",
	{ "jose-elias-alvarez/null-ls.nvim", event = { "BufReadPre", "BufNewFile" } },
	"williamboman/mason.nvim",
	"williamboman/mason-lspconfig.nvim",
	"jay-babu/mason-null-ls.nvim",
	"nvim-treesitter/nvim-treesitter",
	{
		"glepnir/lspsaga.nvim",
		event = "LspAttach",
	},
	"folke/trouble.nvim",

	-- completion
	"hrsh7th/nvim-cmp",
	"hrsh7th/cmp-nvim-lsp",
	"hrsh7th/cmp-buffer",
	"hrsh7th/cmp-path",
	"hrsh7th/cmp-cmdline",
	"hrsh7th/cmp-nvim-lua",
	"L3MON4D3/LuaSnip",
	"onsails/lspkind.nvim",

	-- ui and editor
	"kyazdani42/nvim-tree.lua",
	"nvim-tree/nvim-web-devicons",
	"nvim-lualine/lualine.nvim",
	"akinsho/bufferline.nvim",
	"folke/which-key.nvim",
	{ "folke/neoconf.nvim", cmd = "Neoconf", config = true },
	"glepnir/dashboard-nvim",
	"nvim-telescope/telescope.nvim",
	"nvim-telescope/telescope-symbols.nvim",
	"akinsho/toggleterm.nvim",
	"sudormrfbin/cheatsheet.nvim",
	"rcarriga/nvim-notify",
	"gelguy/wilder.nvim",
	"sindrets/winshift.nvim",

	-- git
	"tpope/vim-fugitive",
	"lewis6991/gitsigns.nvim",
	"sindrets/diffview.nvim",
	"akinsho/git-conflict.nvim",

	-- themes
	"olivercederborg/poimandres.nvim",
	"AlexvZyl/nordic.nvim",
	"tanvirtin/monokai.nvim",
	"sainnhe/sonokai",
	"rose-pine/neovim",
	"Mofiqul/dracula.nvim",
	"nyoom-engineering/oxocarbon.nvim",
	"jacoborus/tender.vim",
	"shaunsingh/nord.nvim",
	"catppuccin/nvim",
	"folke/tokyonight.nvim",

	-- misc
	"xiyaowong/link-visitor.nvim",
}, {})
