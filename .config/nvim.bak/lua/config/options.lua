vim.cmd("let g:newrw_liststyle = 3")

vim.g.mapleader = " "

vim.scriptencoding = "utf-8"
vim.opt.encoding = "utf-8"
vim.opt.fileencoding = "utf-8"

vim.opt.relativenumber = false
vim.opt.number = true

-- tabs & indent
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
vim.opt.autoindent = true

vim.opt.wrap = false

-- search settings
vim.opt.ignorecase = true
vim.opt.smartcase = true

vim.opt.cursorline = true

-- turn on termguicolors for tokyonight colorscheme to work
-- (have to use iterm2 or any other true color terminal)
vim.opt.termguicolors = true
vim.opt.background = "dark"
vim.opt.signcolumn = "yes"

-- backspace
vim.opt.backspace = "indent,eol,start"

-- clipboard
vim.opt.clipboard:append("unnamedplus")

-- split windows
vim.opt.splitright = true
vim.opt.splitbelow = true

-- turn off swapfile
vim.opt.swapfile = false

vim.opt.wildignore:append({ "*/node_modules/*" })
vim.opt.mouse = ""
vim.opt.shell = "zsh"

vim.cmd([[au BufNewFile,BufRead *.astro setf astro]])
vim.cmd([[au BufNewFile,BufRead Podfile setf ruby]])
vim.cmd([[au BufNewFile,BufRead *.tf setf terraform]])
vim.cmd([[au BufNewFile,BufRead *.tfvar setf terraform]])
vim.cmd([[au BufNewFile,BufRead *.dart setf dart]])
