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

-- Delete Keymaps
vim.api.nvim_del_keymap("n", "<leader>n")
vim.api.nvim_del_keymap("n", "<leader>E")
vim.api.nvim_del_keymap("n", "<leader>l")
vim.api.nvim_del_keymap("n", "<leader>K")
vim.api.nvim_del_keymap("n", "<leader>|")
vim.api.nvim_del_keymap("n", "<leader>-")
vim.api.nvim_del_keymap("n", "<leader><space>")
vim.api.nvim_del_keymap("n", "<leader>`")
vim.api.nvim_del_keymap("n", "<leader>/")
vim.api.nvim_del_keymap("n", "<leader>?")

vim.api.nvim_set_keymap("n", "sh", "<C-w>h", { noremap = false })
vim.api.nvim_set_keymap("i", "jj", "<Esc>", { noremap = false })
vim.api.nvim_set_keymap("i", "jk", "<Esc>", { noremap = false })
