local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
  -- spec = {
  --   -- add LazyVim and import its plugins
  --   {
  --     "LazyVim/LazyVim",
  --     import = "lazyvim.plugins",
  --     opts = {
  --       news = { lazyvim = true, neovim = true },
  --     },
  --   },
  --   -- import any extras modules here
  --   { import = "lazyvim.plugins.extras.test.core" },
  --
  --   -- import/override with your plugins
  --   { import = "plugins" },
  --   { import = "plugins.lsp" },
  -- },
  { import = "old.plugins" },
  { import = "old.plugins.lsp" },
  checker = { enabled = true, notify = false },
  change_detection = { notify = false },
})
