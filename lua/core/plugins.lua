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
	{ "nvim-neo-tree/neo-tree.nvim", branch = "v2.x" },
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

	-- git
	"tpope/vim-fugitive",
	"lewis6991/gitsigns.nvim",
	"sindrets/diffview.nvim",
	"akinsho/git-conflict.nvim",

	-- themes
	"olivercederborg/poimandres.nvim",
}, {})
