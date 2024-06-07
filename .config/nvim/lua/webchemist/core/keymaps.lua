vim.g.mapleader = " "

local keymap = vim.keymap -- for conciseness
local opts = { noremap = true, silent = true }

keymap.set("i", "jk", "<ESC>", { desc = "Exit insert mode with jk" })

-- increment/decrement numbers
keymap.set("n", "<leader>+", "<C-a>", { desc = "Increment number" }) -- increment
keymap.set("n", "<leader>-", "<C-x>", { desc = "Decrement number" }) -- decrement

-- Move text up and down (Complete)
keymap.set("n", "<M-Up>", ":m .-2<CR>", opts)
keymap.set("n", "<M-Down>", ":m .+1<CR>", opts)

-- Split window (Complete)
keymap.set("n", "ss", ":split<Return>", opts)
keymap.set("n", "sv", ":vsplit<Return>", opts)

-- Move window (Complete)
keymap.set("n", "sh", "<C-w>h")
keymap.set("n", "sl", "<C-w>l")
keymap.set("n", "<M-s-Left>", "<C-w>h")
keymap.set("n", "<M-s-Up>", "<C-w>k")
keymap.set("n", "<M-s-Down>", "<C-w>j")
keymap.set("n", "<M-s-Right>", "<C-w>l")

-- Resize window
keymap.set("n", "<C-w><left>", "<C-w><")
keymap.set("n", "<C-w><right>", "<C-w>>")
keymap.set("n", "<C-w><up>", "<C-w>+")
keymap.set("n", "<C-w><down>", "<C-w>-")

-- keymap.set("n", "<C-j>", function()
--   vim.diagnostic.goto_next()
-- end, opts)

-- Visual --
-- Stay in indent mode (Complete)
keymap.set("v", "<", "<gv", opts)
keymap.set("v", ">", ">gv", opts)

-- Move text up and down (Complete)
keymap.set("v", "<M-Up>", ":m .-2<CR>==", opts)
keymap.set("v", "<M-Down>", ":m .+1<CR>==", opts)

-- Visual Block --
-- Move text up and down
keymap.set("x", "J", ":move '>+1<CR>gv-gv", opts)
keymap.set("x", "K", ":move '<-2<CR>gv-gv", opts)
