-- bufferline.lua

vim.opt.termguicolors = true

require("bufferline").setup({
  options = {
    mode = "tabs",
    show_buffer_close_icons = false,
    show_close_icon = false,
  },
})
