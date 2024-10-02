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
        mappings = false,
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

      { "<leader>e", "<cmd>Neotree filesystem reveal toggle<cr>", desc = "[E]xplorer" },
      { "<leader>h", "<cmd>nohlsearch<CR>", desc = "No [H]ighlight" },

      -- Buffer
      { "<ledaer>b", group = "[B]uffer" },
      {
        "<leader>bb",
        "<cmd>lua require('telescope.builtin').buffers(require('telescope.themes').get_dropdown{previewer = false})<cr>",
        desc = "[B]uffer List",
      },

      -- Git
      { "<leader>g", group = "[G]it" },
      { "<leader>gg", "<cmd>lua _LAZYGIT_TOGGLE()<CR>", desc = "Lazygit" },
      { "<leader>gj", "<cmd>lua require 'gitsigns'.next_hunk()<cr>", desc = "Next Hunk" },
      { "<leader>gk", "<cmd>lua require 'gitsigns'.prev_hunk()<cr>", desc = "Prev Hunk" },
      { "<leader>gl", "<cmd>lua require 'gitsigns'.blame_line()<cr>", desc = "Blame" },
      { "<leader>gp", "<cmd>lua require 'gitsigns'.preview_hunk()<cr>", desc = "Preview Hunk" },
      { "<leader>gr", "<cmd>lua require 'gitsigns'.reset_hunk()<cr>", desc = "Reset Hunk" },
      { "<leader>gR", "<cmd>lua require 'gitsigns'.reset_buffer()<cr>", desc = "Reset Buffer" },
      { "<leader>gs", "<cmd>lua require 'gitsigns'.stage_hunk()<cr>", desc = "Stage Hunk" },
      { "<leader>gu", "<cmd>lua require 'gitsigns'.undo_stage_hunk()<cr>", desc = "Undo Stage Hunk" },
      { "<leader>go", "<cmd>Telescope git_status<cr>", desc = "Open changed file" },
      { "<leader>gb", "<cmd>Telescope git_branches<cr>", desc = "Checkout branch" },
      { "<leader>gc", "<cmd>Telescope git_commits<cr>", desc = "Checkout commit" },
      { "<leader>gd", "<cmd>Gitsigns diffthis HEAD<cr>", desc = "Diff" },

      -- Code
      { "<leader>c", group = "[C]ode" },
      { "<leader>ca", "<cmd>vim.lsp.buf.code_actions<cr>", desc = "Code [A]ction" },
      { "<leader>cr", "<cmd>vim.lsp.buf.rename<cr>", desc = "Code [R]ename" },
      { "<leader>cR", "<cmd>vim.lsp.buf.references<cr>", desc = "Code [R]eferences" },
      { "<leader>cp", "<cmd>MarkdownPreviewToggle<cr>", desc = "Markdown [P]review" },

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

      -- Tab
      { "<leader><tab>", group = "[Tab]" },

      -- Terminal
      { "<leader>t", group = "[T]erminal" },
      { "<leader>tl", hidden = true },
      -- { "<leader>tn", "<cmd>lua _NODE_TOGGLE()<cr>", desc = "Node" },
      -- { "<leader>tu", "<cmd>lua _NCDU_TOGGLE()<cr>", desc = "NCDU" },
      { "<leader>tf", "<cmd>ToggleTerm direction=float<cr>", desc = "[F]loat Terminal" },
      { "<leader>th", "<cmd>ToggleTerm size=10 direction=horizontal<cr>", desc = "[H]orizontal Terminal" },
      { "<leader>tv", "<cmd>ToggleTerm size=50 direction=vertical<cr>", desc = "[V]ertical Terminal" },

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
      { ";t", "<cmd>TodoLocList keywords=TODO<cr>", desc = "[T]odo Comment" },
      { ";d", "<cmd>lua require('undotree').toggle()<cr>", desc = "Un[D]o Tree Toggle" },
      { ";m", "<cmd>MarkdownPreviewToggle<cr>", desc = "[M]arkdown Preview Toggle" },

      { ";f", group = "[F]lutter" },
      { ";fs", "<cmd>FlutterRun<cr>", desc = "Flutter [S]tart" },
      { ";fr", "<cmd>FlutterReload<cr>", desc = "Flutter [R]eload" },
      { ";fd", "<cmd>FlutterDevices<cr>", desc = "Flutter [D]evices" },
      { ";fo", "<cmd>FlutterOutlineToggle<cr>", desc = "Flutter [O]utline Toggle" },

      { ";ss", ":%s/\\<<C-r><C-w>\\>/<C-r><C-w>/gI<Left><Left><Left>", desc = "Replace All" },
    }

    wk.setup(setup)
    wk.add(mappings)
  end,
}
