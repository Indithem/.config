vim.api.nvim_create_user_command("W", "w", {})
vim.api.nvim_create_user_command("Q", "q", {})
vim.api.nvim_create_user_command("Qa", "qa", {})
vim.api.nvim_create_user_command("Wq", "wq", {})
vim.api.nvim_create_user_command("WQ", "wq", {})

-- Copy to system clipboard
vim.keymap.set("v", "<C-c>", '"+y', { noremap = true, silent = true })
vim.keymap.set("v", "<C-C>", '"+Y', { noremap = true, silent = true })

-- Paste from system clipboard
vim.keymap.set("n", "<C-y>", '"+p', { noremap = true, silent = true })
vim.keymap.set("n", "<C-Y>", '"+P', { noremap = true, silent = true })

-- Exit
vim.keymap.set("n", "<C-q>", ':q<CR>', { noremap = true, silent = false })
--vim.keymap.set("n", "<C-Q>", ':wq<CR>', { noremap = true, silent = false })

-- Save
vim.keymap.set("n", "<C-s>", ':w<CR>', { noremap = true, silent = false })
