return {
  "neovim/nvim-lspconfig",
  event = { "BufReadPre", "BufNewFile" },
  opts = {
    ---@type lspconfig.options
    servers = {
      cssls = {
        -- NOTE: tailwindcss intellisense
        settings = { css = { lint = { unknownAtRules = "ignore" } } },
      },
    },
  },
}
