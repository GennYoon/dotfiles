return {
  "akinsho/flutter-tools.nvim",
  lazy = false,
  dependencies = {
    "nvim-lua/plenary.nvim",
    "stevearc/dressing.nvim", -- optional for vim.io.select
  },
  config = function()
    require("flutter-tools").setup({}) -- use defaults
  end,
}
