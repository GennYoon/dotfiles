return {
  "cappyzawa/telescope-terraform.nvim",
  event = { "BufReadPre", "BufNewFile" },
  config = function()
    require("telescope").load_extension("terraform")
  end,
}
