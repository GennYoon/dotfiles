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
    local opts = {
      mode = "n",
      prefix = "<leader>",
      buffer = nil,
      silent = true,
      noremap = true,
      nowait = true,
    }
    local mappings = {
      ["a"] = { "<cmd>Alpha<cr>", "Alpha" },
      ["e"] = { "<cmd>Neotree toggle<cr>", "Explorer" },
      ["k"] = { "<cmd>bdelete<CR>", "Kill Buffer" },
      ["m"] = { "<cmd>Mason<CR>", "Plugin Manager" },
      ["p"] = { "<cmd>Lazy<CR>", "Plugin Manager" },
      ["q"] = { "<cmd>wqall!<CR>", "Quit" },
      ["r"] = { "<cmd>lua vim.lsp.buf.format{async=true}<cr>", "Reformat Code" },
      ["w"] = { "<cmd>w!<CR>", "Save" },
      ["<tab>"] = { name = "Tab", n = { "", "New Tab" } },

      -- Git
      g = {
        name = "Git",
        o = { "<cmd>Octo<cr>", "Octo" },
        s = { "<cmd>Telescope git_status<cr>", "Open changed file" },
        b = { "<cmd>Telescope git_branches<cr>", "Checkout branch" },
        c = { "<cmd>Telescope git_commits<cr>", "Checkout commit" },
        d = { "<cmd>Gitsigns diffthis HEAD<cr>", "Diff" },
      },

      -- Code
      c = {
        name = "Code",
        a = { "<cmd>vim.lsp.buf.code_actions<cr>", "Code Action" },
        r = { "<cmd>vim.lsp.buf.rename<cr>", "Code Rename" },
        R = { "<cmd>vim.lsp.buf.reference<cr>", "Code Reference" },
      },

      -- Telescope
      f = {
        name = "File Search",
        c = { "<cmd>Telescope colorscheme<cr>", "Colorscheme" },
        f = { "<cmd>Telescope find_files<cr>", "Find files" },
        r = { "<cmd>Telescope oldfiles<cr>", "Open Recent File" },
        g = { "<cmd>Telescope live_grep<cr>", "Live Grep" },
      },

      -- Search
      s = {
        name = "Search",
        h = { "<cmd>Telescope help_tags<cr>", "Find Help" },
        m = { "<cmd>Telescope man_pages<cr>", "Man Pages" },
        r = { "<cmd>Telescope registers<cr>", "Registers" },
        k = { "<cmd>Telescope keymaps<cr>", "Keymaps" },
        c = { "<cmd>Telescope commands<cr>", "Commands" },
        g = { "<cmd>!open -a 'Google Chrome' https://google.com<cr>", "Search Google in Chrome" },
        a = { "<cmd>!open -a arc https://google.com<cr>", "Search Google in Arc" },
      },

      -- Toggle Term
      t = {
        name = "Terminal",
        t = { "<cmd>ToggleTerm direction=float<cr>", "Float Terminal" }, -- Floating Terminal
      },
    }

    wk.setup(setup)
    wk.register(mappings, opts)
  end,
}
