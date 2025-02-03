return {
  "folke/which-key.nvim",
  event = "VeryLazy",
  init = function()
    vim.o.timeout = true
    vim.o.timeoutlen = 500
  end,
  config = function()
    local wk = require("which-key")

    local setup = {
      plugins = {
        spelling = true,
      },
      icons = {
        group = "",
      },
    }

    local mappings = {
      { "<leader>b", hidden = true },
      { "<leader>c", hidden = true },
      { "<leader>C", hidden = true },
      { "<leader>d", hidden = true },
      { "<leader>D", hidden = true },
      { "<leader>E", hidden = true },
      { "<leader>i", hidden = true },
      { "<leader>l", hidden = true },
      { "<leader>L", hidden = true },
      { "<leader>K", hidden = true },
      { "<leader>o", hidden = true },
      { "<leader>O", hidden = true },
      { "<leader>p", hidden = true },
      { "<leader>P", hidden = true },
      { "<leader>q", hidden = true },
      { "<leader>r", hidden = true },
      { "<leader>u", hidden = true },
      { "<leader>w", hidden = true },
      { "<leader>x", hidden = true },
      { "<leader>z", hidden = true },
      { "<leader>|", hidden = true },
      { "<leader>-", hidden = true },
      { "<leader><space>", hidden = true },
      { "<leader>`", hidden = true },
      { "<leader>/", hidden = true },
      { "<leader>?", hidden = true },

      -- Code
      { "<leader>c", group = "[C]ode" },
      { "<leader>ca", "<cmd>vim.lsp.buf.code_actions<cr>", desc = "Code [A]ction" },
      { "<leader>cr", "<cmd>vim.lsp.buf.rename<cr>", desc = "Code [R]ename" },
      { "<leader>cR", "<cmd>vim.lsp.buf.references<cr>", desc = "Code [R]eferences" },
      { "<leader>cp", "<cmd>MarkdownPreviewToggle<cr>", desc = "Markdown [P]review" },

      -- File
      { "<leader>f", group = "[F]ile" },
      { "<leader>ff", "<cmd>Telescope find_files<cr>", desc = "File [F]ile in cmd" },
      { "<leader>fr", "<cmd>Telescope oldfiles<cr>", desc = "File [R]ecent in cmd" },
      { "<leader>fs", "<cmd>Telescope live_grep<cr>", desc = "File [S]tring in cmd" },
      {
        "<leader>ft",
        "<cmd>TodoTelescope keywords=TODO,FIX,FIXME,BUG,FIXIT,ISSUE,HACK,WARN,WARNING,PERF,OPTIM,PERFORMANCE,OPTIMAZE,TEST,TESTING,PASSED,FAILED<cr>",
        desc = "File [T]odos",
      },

      -- Terminal
      { "<leader>t", icon = "🖥", group = "[T]erminal" },
      { "<leader>tt", "<cmd>ToggleTerm direction=float<cr>", icon = "🖥", desc = "Float [T]erminal" },

      -- AI
      { "<leader>a", icon = "🤖", group = "[A]I" },

      -- Tab
      { "<leader><tab>", group = "[Tab]" },
      { "<leader><tab>w", "<cmd>BufferLinePickClose<cr>", desc = "Close Tab" },
      { "<leader><tab>s", "<cmd>w<cr>", desc = "Save Tab" },
    }

    wk.setup(setup)
    wk.add(mappings)
  end,
}
