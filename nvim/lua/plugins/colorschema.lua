return {
  { "ellisonleao/gruvbox.nvim" },
  {
    "AlexvZyl/nordic.nvim",
    lazy = false,
    priority = 1000,
  },
  { "folke/tokyonight.nvim", lazy = true, opts = { style = "moon" } },
  { "catppuccin/nvim", name = "catppuccin", lazy = false, priority = 1000, opts = { flavour = "mocha" } },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "tokyonight",
    },
  },
}
