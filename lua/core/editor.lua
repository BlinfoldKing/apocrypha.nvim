-- default colorscheme
vim.cmd("colorscheme poimandres")

vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

require("nvim-tree").setup({
	view = {
		adaptive_size = true,
	},
})

require("lualine").setup({
	options = {
		section_separators = { left = "", right = "" },
	},

	extensions = { "nvim-tree", "fugitive" },
})

require("bufferline").setup({
	options = {
		separator_style = "slant",
		diagnostic = "nvim_lsp",
	},
})

require("alpha").setup(require("alpha.themes.dashboard").config)
