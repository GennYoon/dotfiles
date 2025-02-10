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
vim.keymap.del("n", "<leader>n", nil)
vim.keymap.del("n", "<leader>E", nil)
vim.keymap.del("n", "<leader>l", nil)
vim.keymap.del("n", "<leader>K", nil)
vim.keymap.del("n", "<leader>|", nil)
vim.keymap.del("n", "<leader>-", nil)
vim.keymap.del("n", "<leader><space>", nil)
vim.keymap.del("n", "<leader>`", nil)
vim.keymap.del("n", "<leader>/", nil)
vim.keymap.del("n", "<leader>?", nil)

vim.keymap.set("n", "sh", "<C-w>h")
