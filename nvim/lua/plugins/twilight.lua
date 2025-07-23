return {
  "folke/twilight.nvim",
  opts = {
    dimming = {
      alpha = 0.3, -- amount of dimming
      color = { "Normal", "#ffffff" }, -- color of the dimmed background
      term_bg = "#000000", -- background color of the terminal
      inactive = true, -- when true, other windows are not dimmed
    },
    context = 7,
    treesitter = true, -- enable treesitter context
    expand = {
      "function",
      "method",
      "table",
      "is_statement",
    },
    exclude = {},
  },
}
