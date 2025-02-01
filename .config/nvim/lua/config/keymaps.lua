-- Modes
-- normal_mode = "n",
-- insert_mode = "i",
-- visual_mode = "v",
-- visual_block_mode = "x",
-- term_mode = "t",
-- command_mode = "c",

-- Meta Key
-- S <shift>
-- C <control>
-- M <option>
-- D <command>

local opts = { noremap = true, silent = true }

-- Delete Keymaps
vim.keymap.del("n", "<leader>E", nil)
vim.keymap.del("n", "<leader>l", nil)
vim.keymap.del("n", "<leader>K", nil)
vim.keymap.del("n", "<leader>|", nil)
vim.keymap.del("n", "<leader>-", nil)
vim.keymap.del("n", "<leader><space>", nil)
vim.keymap.del("n", "<leader>`", nil)
vim.keymap.del("n", "<leader>/", nil)
vim.keymap.del("n", "<leader>?", nil)

-- Delete Default Test Keymaps
vim.keymap.del("n", "<leader>tl", nil)
vim.keymap.del("n", "<leader>to", nil)
vim.keymap.del("n", "<leader>tO", nil)
vim.keymap.del("n", "<leader>tr", nil)
vim.keymap.del("n", "<leader>ts", nil)
vim.keymap.del("n", "<leader>tS", nil)
vim.keymap.del("n", "<leader>tT", nil)
vim.keymap.del("n", "<leader>tw", nil)

vim.keymap.set("n", "sh", "<C-w>h")
vim.keymap.set("n", "ww", "<cmd>BufferLinePickClose<cr>")
