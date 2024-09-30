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
  spec = {
    -- add LazyVim and import its plugins
    {
      "LazyVim/LazyVim",
      import = "lazyvim.plugins",
      opts = {
        colorscheme = "solarized-osaka",
        news = {
          lazyvim = true,
          neovim = true,
        },
      },
    },
    -- import any extras modules here
    -- { import = "lazyvim.plugins.extras.linting.eslint" },
    -- { import = "lazyvim.plugins.extras.formatting.prettier" },
    -- { import = "lazyvim.plugins.extras.lang.typescript" },
    -- { import = "lazyvim.plugins.extras.lang.json" },
    -- { import = "lazyvim.plugins.extras.lang.rust" },
    -- { import = "lazyvim.plugins.extras.lang.tailwind" },
    -- { import = "lazyvim.plugins.extras.coding.copilot" },
    -- { import = "lazyvim.plugins.extras.util.mini-hipatterns" },

    -- import/override with your plugins
    { import = "plugins" },
  },
  defaults = {
    lazy = false,
    version = false,
  },
  checker = { enabled = true },
  performance = {
    cache = {
      enabled = true,
    },
    rtp = {
      "gzip",
      -- "matchit",
      -- "matchparen",
      "netrwPlugin",
      "rplugin",
      "tarPlugin",
      "tohtml",
      "tutor",
      "zipPlugin",
    },
  },
  debug = false,
})
