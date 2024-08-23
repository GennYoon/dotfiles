return {
  "folke/which-key.nvim",
  event = "VeryLazy",
  init = function()
    vim.o.timeout = true
    vim.o.timeoutlen = 500
  end,
  config = function()
    local wk = require("which-key")

    wk.opts = {
      plugins = {
        spelling = true,
      },
      icons = {
        mappings = false,
        group = "",
      },
    }

    wk.add({
      { "<leader>d", hidden = true },
      { "<leader>D", hidden = true },
      { "<leader>l", hidden = true },
      { "<leader>w", hidden = true },
      { "<leader>x", hidden = true },
      { "<leader>a", "<cmd>Alpha<cr>", desc = "[A]lpha" },
      { "<leader>e", "<cmd>Neotree filesystem reveal toggle<cr>", desc = "[E]xplorer" },

      -- Git
      { "<leader>g", group = "[G]it" },

      -- Code
      { "<leader>c", group = "[C]ode" },
      { "<leader>ca", "<cmd>vim.lsp.buf.code_actions<cr>", desc = "Code [A]ction" },
      { "<leader>cr", "<cmd>vim.lsp.buf.rename<cr>", desc = "Code [R]ename" },
      { "<leader>cR", "<cmd>vim.lsp.buf.references<cr>", desc = "Code [R]eferences" },

      -- Find
      { "<leader>f", group = "[F]ind" },
      { "<leader>ff", "<cmd>Telescope find_files<cr>", desc = "Find [F]ile in cmd" },
      { "<leader>fr", "<cmd>Telescope oldfiles<cr>", desc = "Find [R]ecent in cmd" },
      { "<leader>fs", "<cmd>Telescope live_grep<cr>", desc = "Find [S]tring in cmd" },
      { "<leader>fc", "<cmd>Telescope grep_string<cr>", desc = "Find [S]tring in cmd" },
      {
        "<leader>ft",
        "<cmd>TodoTelescope keywords=TODO,FIX,FIXME,BUG,FIXIT,ISSUE,TODO,HACK,WARN,WARNING,PERF,OPTIM,PERFORMANCE,OPTIMAZE,TEST,TESTING,PASSED,FAILED<cr>",
        desc = "Find [T]odos",
      },

      -- Terminal
      { "<leader>t", group = "[T]erminal" },
      { "<leader>tl", hidden = true },
      { "<leader>tt", "<cmd>ToggleTerm direction=float<cr>", desc = "Float [T]erminal" },

      -- Session
      { "<leader>s", group = "[S]ession" },
      { "<leader>sr", "<cmd>SessionRestore<cr>", desc = "Session [R]estore for cwd" },
      { "<leader>ss", "<cmd>SessionSave<cr>", desc = "Session [S]ave for auto session root dir" },

      -- Yanky
      { "<leader>y", group = "[Y]ank" },
      { "<leader>yy", "<cmd>YankyRingHistory<cr>", desc = "Open Yank History" },
      { "<leader>yc", "<cmd>YankyClearHistory<cr>", desc = "Clear Yark History" },

      -- Quick
      { ";", group = "Quick" },
      { ";t", "<cmd>Telescope TodoTelescope keywords=TODO<cr>", desc = "[T]odo Comment" },
    })

    wk.setup(wk.opts)
  end,
}
