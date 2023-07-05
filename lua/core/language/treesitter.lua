require("nvim-treesitter.configs").setup({
	ensure_installed = { "lua", "jsonc" },
})

require("nvim-treesitter.configs").setup({
	sync_install = false,

	highlight = {
		enable = true,
		additional_vim_regex_highlighting = false,
	},
})
