return {
  {
    "akinsho/bufferline.nvim",
    event = "VeryLazy",
    config = function(_, opts)
      require("bufferline").setup(opts)
      require("bufferline").setup({
        options = {
          mode = "tabs",
          show_buffer_close_icons = false,
          show_close_icon = false,
        },
      })
    end,
  },
}
