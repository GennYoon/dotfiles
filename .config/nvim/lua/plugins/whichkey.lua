return {
  "folke/which-key.nvim",
  event = "VeryLazy",
  init = function()
    vim.o.timeout = true
    vim.o.timeoutlen = 500
  end,
  opts = {
    plugins = { spelling = true },
  },
  config = function(_, setup)
    local wk = require("which-key")
    local opts = { mode = "n", prefix = "<leader>", buffer = nil, noremap = true, silent = true, nowait = true }

    local mappings = {
      ["a"] = { "<cmd>Alpha<cr>", "Alpha" },
      ["e"] = { "<cmd>Neotree filesystem reveal toggle<CR>", "Explorer" },

      -- Git
      g = {
        name = "Git",
      },
      -- Code
      c = {
        name = "Code",
        a = { "<cmd>vim.lsp.buf.code_actions<cr>", "Code Action" },
        r = { "<cmd>vim.lsp.buf.rename<cr>", "Code Rename" },
        R = { "<cmd>vim.lsp.buf.references<cr>", "Code References" },
      },
      -- Find
      f = {
        name = "Find",
        c = { "<cmd>Telescope colorscheme<cr>", "Colorscheme" },
        f = { "<cmd>Telescope find_files<cr>", "Find Files" },
        r = { "<cmd>Telescope oldfiles<cr>", "Recent Files" },
        g = { "<cmd>Telescope live_grep<cr>", "Live Grep" },
      },
      -- Terminal
      t = {
        name = "Terminal",
        t = { "<cmd>ToggleTerm direction=float<cr>", "Float Terminal" },
      },
    }

    wk.setup(setup)
    wk.register(mappings, opts)
  end,
}
