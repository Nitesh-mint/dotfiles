-- <CR> means pressing Enter after the command
-- silent: True Don't show command in the command line
-- noremap: Don't allow this mapping to be remaped by other configs

vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
vim.keymap.set("n", "<Tab>", ":bnext<CR>", { noremap = true, silent = true })
vim.keymap.set("v", "<leader>y", '"+y', opts)
vim.keymap.set("n", "<leader>/", "gcc", { noremap = true, silent = true })
vim.keymap.set("v", "<leader>/", "gc", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>pp", ":Lspsaga peek_definition<CR>", { silent = true, noremap = true })
vim.keymap.set("n", "<leader>p", ":Lspsaga hover_doc<CR>", { silent = true, noremap = true })

-- BufferLine mappings
vim.keymap.set("n", "<leader>bp", "<Cmd>BufferLineTogglePin<CR>", { desc = "Toggle Pin Buffer" })
vim.keymap.set("n", "<leader>1", "<Cmd>BufferLineGoToBuffer 1<CR>")
vim.keymap.set("n", "<leader>2", "<Cmd>BufferLineGoToBuffer 2<CR>")
vim.keymap.set("n", "<leader>3", "<Cmd>BufferLineGoToBuffer 3<CR>")
vim.keymap.set("n", "<leader>bo", "<Cmd>BufferLineCloseOthers<CR>", { desc = "Close Others" })

-- surround
--- 'x' is for Visual Mode, 'gs' is the key, the <Plug> is the internal function
vim.keymap.set("x", "gs", "<Plug>(nvim-surround-visual)", { desc = "Surround selection" })
vim.keymap.set("x", "gS", "<Plug>(nvim-surround-visual-line)", { desc = "Surround selection (newline)" })
