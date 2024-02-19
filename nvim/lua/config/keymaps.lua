local keymap = vim.keymap
local opts = { noremap = true, silent = true }
local term_opts = { silent = true }

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

-- Insert --
-- Press jk fast to enter
keymap.set("i", "jj", "<ESC>", opts)

-- Tab Control (Complete)
keymap.set("n", "te", ":tabedit")
keymap.set("n", "<Tab>", ":tabnext<Return>", opts)
keymap.set("n", "<s-Tab>", ":tabprev<Return>", opts)

-- Codeium Accept (Complete)
keymap.set("i", "<C-g>", function()
  return vim.fn["codeium#Accept"]()
end, { expr = true })

-- Increment / Decrement (Complete)
keymap.set("n", "+", "<C-a>")
keymap.set("n", "-", "<C-x>")

-- Select All (Complete)
keymap.set("n", "<D-a>", "gg<S-v>G")

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

-- Visual --
-- Stay in indent mode (Complete)
keymap.set("v", "<", "<gv", opts)
keymap.set("v", ">", ">gv", opts)

-- Move text up and down (Complete)
keymap.set("v", "<M-Up>", ":m .-2<CR>==", opts)
keymap.set("v", "<M-Down>", ":m .+1<CR>==", opts)
