return {
  "pwntester/octo.nvim",
  cmd = "Octo",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-telescope/telescope.nvim",
    "nvim-tree/nvim-web-devicons",
  },
  config = function()
    require("octo").setup({ enable_builtin = true, suppress_missing_scope = { projects_v2 = true } })
    vim.cmd([[hi OctoEditable guibg=none]])
  end,
}
