require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set
vim.api.nvim_set_keymap("i", "<Tab>", 'copilot#Accept("<Tab>")', { silent = true, expr = true, noremap = true })

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")
vim.api.nvim_set_keymap("i", "<Tab>", 'copilot#Accept("<Tab>")', { silent = true, expr = true })

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
