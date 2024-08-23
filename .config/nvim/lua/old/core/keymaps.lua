local keymap = vim.keymap
local opts = { noremap = true, silent = true }

-- Default keymap delete
-- keymap.del("n", "<leader>gg") -- Lazygit

-- Modes
-- normal_mode = "n",
-- insert_mode = "i",
-- visual_mode = "v",
-- visual_block_mode = "x",
-- term_mode = "t",
-- command_mode = "c",

-- Meta Key
-- s <shift>
-- C <control>
-- M <option>
-- D <command>
keymap.set("n", "x", "_x")

-- Insert --
-- Press jk fast to enter
keymap.set("i", "jk", "<ESC>", opts)

-- Increment / Decrement (Complete)
keymap.set("n", "+", "<C-a>")
keymap.set("n", "-", "<C-x>")

-- Select All (Complete)
keymap.set("n", "<C-a>", "gg<S-v>G")

-- Tab Control (Complete)
keymap.set("n", "te", ":tabedit<Return>")
keymap.set("n", "<Tab>", ":tabnext<Return>", opts)
keymap.set("n", "<s-Tab>", ":tabprev<Return>", opts)
keymap.set("n", "tw", ":tabclose<Return>", opts)

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
keymap.set("n", "<C-w><left>", "5<C-w><")
keymap.set("n", "<C-w><right>", "5<C-w>>")
keymap.set("n", "<C-w><up>", "5<C-w>+")
keymap.set("n", "<C-w><down>", "5<C-w>-")

-- Tmux --
keymap.set("n", "<C-h>", "<cmd>NvimTmuxNavigateLeft<CR>", opts)
keymap.set("n", "<C-j>", "<cmd>NvimTmuxNavigateDown<CR>", opts)
keymap.set("n", "<C-k>", "<cmd>NvimTmuxNavigateUp<CR>", opts)
keymap.set("n", "<C-l>", "<cmd>NvimTmuxNavigateRight<CR>", opts)

-- keymap.set("n", "<C-j>", function()
--   vim.diagnostic.goto_next()
-- end, opts)

-- Visual --
-- Stay in indent mode (Complete)
keymap.set("v", "<", "<gv", opts)
keymap.set("v", ">", ">gv", opts)

-- Move text up and down (Complete)
keymap.set("v", "<M-Up>", ":m .-2<CR>gv=gv", opts)
keymap.set("v", "<M-Down>", ":m .+1<CR>gv=gv", opts)

-- Visual Block --
-- Move text up and down
keymap.set("x", "J", ":m '>+1<CR>gv=gv", opts)
keymap.set("x", "K", ":m '<-2<CR>gv=gv", opts)

keymap.set("x", "p", "pgvy")

-- -- Navigate vim panes better
-- vim.keymap.set("n", "<c-k>", ":wincmd k<CR>")
-- vim.keymap.set("n", "<c-j>", ":wincmd j<CR>")
-- vim.keymap.set("n", "<c-h>", ":wincmd h<CR>")
-- vim.keymap.set("n", "<c-l>", ":wincmd l<CR>")
--
-- vim.keymap.set("n", "<leader>h", ":nohlsearch<CR>")
--
--
