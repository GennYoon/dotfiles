---@type LazySpec
return {
  "potamides/pantran.nvim",
  keys = {
    {
      "<leader>tr",
      function()
        return require("pantran").motion_translate()
      end,
      desc = "Translate",
      silent = true,
      expr = true,
      noremap = true,
      mode = { "n", "v" },
    },
  },
  opts = {
    default_engine = "google",
    engines = {
      google = {
        fallback = {
          default_source = "auto",
          default_target = "ko",
        },
      },
    },
  },
}
