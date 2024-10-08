return {
  {
    "akinsho/flutter-tools.nvim",
    lazy = false,
    dependencies = {
      "nvim-lua/plenary.nvim",
      "stevearc/dressing.nvim", -- Optional for vim.ui.select
    },
    config = function()
      require("flutter-tools").setup({})
      require("flutter-tools").setup_project({
        { name = "Not Flavor" },
        {
          name = "Development",
          flavor = "dev",
          -- device = "deviceId",
          -- dart_define = {
          --   API_URL= "",
          --   IS_DEV = true
          -- },
          -- dart_define_from_file = "config.json"
        },
        {
          name = "Production",
          flavor = "prod",
        },
        {
          name = "WebApp",
          flavor = "web",
          device = "chrome",
          web_port = 4000,
        },
        {
          name = "Profile",
          flutter_mode = "profile",
        },
      })
    end,
  },
}
