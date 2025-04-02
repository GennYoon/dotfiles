local keymap = vim.keymap
local opts = { noremap = true, silent = true }

keymap.set("n", "x", '"_x')

-- Increment/decrement
keymap.set("n", "+", "<C-a>")
keymap.set("n", "-", "<C-x>")

-- Select all
keymap.set("n", "<C-a>", "gg<S-v>G")

-- Save file and quit
keymap.set("n", "<Leader>w", ":update<Return>", opts)
keymap.set("n", "<Leader>q", ":quit<Return>", opts)
keymap.set("n", "<Leader>Q", ":qa<Return>", opts)

-- Tabs
keymap.set("n", "te", ":tabedit")
keymap.set("n", "<tab>", ":tabnext<Return>", opts)
keymap.set("n", "<s-tab>", ":tabprev<Return>", opts)
keymap.set("n", "tw", ":tabclose<Return>", opts)

-- Split window
keymap.set("n", "ss", ":split<Return>", opts)
keymap.set("n", "sv", ":vsplit<Return>", opts)

-- Move window
keymap.set("n", "sh", "<C-w>h")
keymap.set("n", "sk", "<C-w>k")
keymap.set("n", "sj", "<C-w>j")
keymap.set("n", "sl", "<C-w>l")

-- Resize window
keymap.set("n", "<C-S-h>", "<C-w><")
keymap.set("n", "<C-S-l>", "<C-w>>")
keymap.set("n", "<C-S-k>", "<C-w>+")
keymap.set("n", "<C-S-j>", "<C-w>-")

keymap.set("n", "sh", "<C-w>h", opts)

-- Remove Test Whtchkey
vim.api.nvim_del_keymap("n", "<leader>tl")
vim.api.nvim_del_keymap("n", "<leader>to")
vim.api.nvim_del_keymap("n", "<leader>tO")
vim.api.nvim_del_keymap("n", "<leader>tr")
vim.api.nvim_del_keymap("n", "<leader>ts")
vim.api.nvim_del_keymap("n", "<leader>tS")
vim.api.nvim_del_keymap("n", "<leader>tt")
vim.api.nvim_del_keymap("n", "<leader>tT")
vim.api.nvim_del_keymap("n", "<leader>tw")

local Keys = require("lazyvim.plugins.lsp.keymaps").get()
vim.list_extend(Keys, {
  { "<leader>t", "", desc = "Termial" },
  { "<leader>tt", "<cmd>ToggleTerm direction=float<cr>", desc = "Float Termial" },
})

-- vim.api.nvim_set_keymap("n", "<leader>tt", "<cmd>ToggleTerm direction=float<cr>", { desc = "Float Termial" })
