return {
  "windwp/nvim-ts-autotag",
  lazy = false,
  description = "nvim-treesitter/nvim-treesitter",
  config = function()
    require("nvim-ts-autotag").setup()
  end,
}
