return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons",
    "MunifTanjim/nui.nvim",
  },
  config = function()
    require("neo-tree").setup({
      window = {
        width = 40,
      },
      filesystem = {
        visible = false,
        hide_dotfiles = true,
        hide_gitignored = true,
        hide_hidden = true,
        filtered_items = {
          always_show = { ".config" },
          always_show_by_pattern = { ".env*" },
          naver_show = { ".DS_Store" },
        },
      },
    })
  end,
}
