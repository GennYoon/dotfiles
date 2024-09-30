-- local discipline = require("webchemist.discipline")
--
-- discipline.cowboy()

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

local keymap = vim.keymap
local opts = { noremap = true, silent = true }

-- 레지스터에 영향을 주지 않고 작업 수행
keymap.set("n", "x", '"_x')
keymap.set("n", "<Leader>p", '"0p')
keymap.set("n", "<Leader>P", '"0P')
keymap.set("v", "<Leader>p", '"0p')
keymap.set("n", "<Leader>c", '"_c')
keymap.set("n", "<Leader>C", '"_C')
keymap.set("v", "<Leader>c", '"_c')
keymap.set("v", "<Leader>C", '"_C')
keymap.set("n", "<Leader>d", '"_d')
keymap.set("n", "<Leader>D", '"_D')
keymap.set("v", "<Leader>d", '"_d')
keymap.set("v", "<Leader>D", '"_D')

-- Increment / Decrement
keymap.set("n", "+", "<C-a>")
keymap.set("n", "-", "<C-x>")

-- Delete a word backwords
keymap.set("n", "dw", 'vd"_d')

-- Select all
keymap.set("n", "<C-a>", "gg<S-v>G")

-- Disable continuations
keymap.set("n", "<Leader>o", "o<Esc>^Da", opts)
keymap.set("n", "<Leader>O", "O<Esc>^Da", opts)

-- Jumplist
keymap.set("n", "<C-m>", "<C-i>", opts)

-- New tab
keymap.set("n", "te", ":tabedit<Return>")
keymap.set("n", "<Tab>", ":tabnext<Return>", opts)
keymap.set("n", "<s-Tab>", ":tabprev<Return>", opts)
keymap.set("n", "tw", ":tabclose<Return>", opts)

-- Move text up and down ??
keymap.set("n", "<M-Up>", ":m .-2<CR>", opts)
keymap.set("n", "<M-Down>", ":m .+1<CR>", opts)

-- Split window
keymap.set("n", "ss", ":split<Return>", opts)
keymap.set("n", "sv", ":vsplit<Return>", opts)

-- Move window
keymap.set("n", "sh", "<C-w>h")
keymap.set("n", "sk", "<C-w>k")
keymap.set("n", "sj", "<C-w>j")
keymap.set("n", "sl", "<C-w>l")

-- ??
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

-- Diagnostics
keymap.set("n", "<C-j>", function()
  vim.diagnostic.goto_next()
end, opts)

keymap.set("n", "<leader>r", function()
  require("webchemist.hsl").replaceHexWithHSL()
end)

keymap.set("n", "<leader>i", function()
  require("webchemist.lsp").toggleInlayHints()
end)
