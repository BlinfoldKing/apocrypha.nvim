vim.cmd("autocmd BufWritePre * lua vim.lsp.buf.format()")
vim.api.nvim_set_keymap("n", "tt", "<cmd>NvimTreeToggle<CR>", { noremap = true, silent = true })
