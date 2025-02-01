return {
  "akinsho/nvim-bufferline.lua",
  event = "VeryLazy",
  dependencies = "nvim-tree/nvim-web-devicons",
  keys = {
    { "<Tab>", "<cmd>BufferLineCycleNext<cr>", desc = "Next tab" },
    { "<S-Tab>", "<cmd>BufferLineCyclePrev<cr>", desc = "Prev tab" },
  },
}
