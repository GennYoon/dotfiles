return {
  "nvim-neo-tree/neo-tree.nvim",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons",
    "MunifTanjim/nui.nvim",
  },
  config = function()
    require("neo-tree").setup({
      window = {
        width = 30,
      },
      filesystem = {
        visible = false,
        hide_dotfiles = true,
        hide_gitignored = true,
        hide_hidden = true,
        filtered_items = {
          always_show = { ".config", ".gitignore", ".gitconfig" },
          always_show_by_pattern = { ".env*", ".tmux*" },
          naver_show = { ".DS_Store" },
        },
      },
    })
  end,
}
