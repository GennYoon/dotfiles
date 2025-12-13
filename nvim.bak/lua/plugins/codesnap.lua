return {
  "mistricky/codesnap.nvim",
  build = "make",
  config = function()
    require("codesnap").setup({
      bg_padding = 20,
      has_breadcrumbs = true,
      has_line_number = true,
      watermark = "",
    })
  end,
}
