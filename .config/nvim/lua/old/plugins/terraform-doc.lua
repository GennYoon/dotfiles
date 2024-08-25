return {
  "ANGkeith/telescope-terraform-doc.nvim",
  event = { "BufReadPre", "BufNewFile" },
  config = function()
    require("telescope").load_extension("terraform_doc")
  end,
}
