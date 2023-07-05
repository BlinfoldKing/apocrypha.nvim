require("core.editor.notification")
require("core.editor.tree")

vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
require("nvim-web-devicons").setup({})

require("toggleterm").setup({
	start_in_insert = false,
	open_mapping = "ESC",
})

require("lualine").setup({
	extensions = { "nvim-tree", "fugitive" },
})

require("bufferline").setup({
	options = {
		diagnostic = "nvim_lsp",
	},
})

vim.cmd([[ let g:neo_tree_remove_legacy_commands = 1 ]])
vim.fn.sign_define("DiagnosticSignError", { text = " ", texthl = "DiagnosticSignError" })
vim.fn.sign_define("DiagnosticSignWarn", { text = " ", texthl = "DiagnosticSignWarn" })
vim.fn.sign_define("DiagnosticSignInfo", { text = " ", texthl = "DiagnosticSignInfo" })
vim.fn.sign_define("DiagnosticSignHint", { text = "", texthl = "DiagnosticSignHint" })

vim.cmd("source ~/.config/nvim/.vimrc")
