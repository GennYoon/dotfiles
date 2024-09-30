return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  event = { "BufReadPre", "BufNewFile" },
  lazy = vim.fn.argc(-1) == 0,
  cmd = { "TSUpdateSync", "TSUpdate", "TSInstall" },
  config = function()
    -- import nvim-treesitter plugin
    local treesitter = require("nvim-treesitter.configs")

    -- configure treesitter
    treesitter.setup({
      -- enable syntax highlighting
      highlight = { enable = true },
      -- enable indentation
      indent = { enable = true },
      -- enable autotagging (w/ nvim-ts-autotag plugin)
      autotag = { enable = false },
      -- ensure these language parsers are installed
      ensure_installed = {
        "git_config", -- git
        "gitcommit", -- git
        "git_rebase", -- git
        "gitignore", -- git
        "gitattributes", -- git
        "json5", -- json
        "javascript",
        "typescript",
        "tsx",
        "yaml",
        "html",
        "css",
        "prisma",
        "svelte", -- svelte
        "terraform", -- terraform
        "hcl", -- terraform
        "graphql",
        "bash",
        "lua",
        "vim",
        "dockerfile",
        "query",
        "vimdoc",
        "c",
      },
      incremental_selection = {
        enable = true,
        keymaps = {
          init_selection = "<c-space>",
          node_incremental = "<c-space>",
          scope_incremental = false,
          node_decremental = "<bs>",
        },
      },
    })
  end,
}
