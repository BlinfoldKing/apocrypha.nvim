vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

require("toggleterm").setup({
	start_in_insert = false,
	open_mapping = "ESC",
})

require("lualine").setup({
	extensions = { "neo-tree", "fugitive" },
})

require("bufferline").setup({
	options = {
		diagnostic = "nvim_lsp",
	},
})

require("neo-tree").setup({
	close_if_last_window = false,
	enable_git_status = true,
	enable_diagnostics = true,
	open_files_do_not_replace_types = { "terminal", "trouble", "qf" },
	filesystem = {
		filtered_items = {
			hide_dotfiles = false,
			hide_gitignored = false,
			hide_hidden = false,
		},
	},
})

require("dashboard").setup({
	config = {
		header = {
			[[                                                                                   ]],
			[[     /\__\         /\  \         /\  \         /\__\          ___        /\__\     ]],
			[[    /::|  |       /::\  \       /::\  \       /:/  /         /\  \      /::|  |    ]],
			[[   /:|:|  |      /:/\:\  \     /:/\:\  \     /:/  /          \:\  \    /:|:|  |    ]],
			[[  /:/|:|  |__   /::\~\:\  \   /:/  \:\  \   /:/__/  ___      /::\__\  /:/|:|__|__  ]],
			[[ /:/ |:| /\__\ /:/\:\ \:\__\ /:/__/ \:\__\  |:|  | /\__\  __/:/\/__/ /:/ |::::\__\ ]],
			[[ \/__|:|/:/  / \:\~\:\ \/__/ \:\  \ /:/  /  |:|  |/:/  / /\/:/  /    \/__/~~/:/  / ]],
			[[     |:/:/  /   \:\ \:\__\    \:\  /:/  /   |:|__/:/  /  \::/__/           /:/  /  ]],
			[[     |::/  /     \:\ \/__/     \:\/:/  /     \::::/__/    \:\__\          /:/  /   ]],
			[[     /:/  /       \:\__\        \::/  /       ~~~~         \/__/         /:/  /    ]],
			[[     \/__/         \/__/         \/__/                                   \/__/     ]],
			[[                                                                                   ]],
		},

		packages = { enable = true },
	},
})

vim.cmd([[ let g:neo_tree_remove_legacy_commands = 1 ]])
vim.fn.sign_define("DiagnosticSignError", { text = " ", texthl = "DiagnosticSignError" })
vim.fn.sign_define("DiagnosticSignWarn", { text = " ", texthl = "DiagnosticSignWarn" })
vim.fn.sign_define("DiagnosticSignInfo", { text = " ", texthl = "DiagnosticSignInfo" })
vim.fn.sign_define("DiagnosticSignHint", { text = "", texthl = "DiagnosticSignHint" })
