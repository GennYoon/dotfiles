return {
  "neovim/nvim-lspconfig",
  event = { "BufReadPre", "BufNewFile" },
  opts = {
    servers = {
      cssls = {
        -- NOTE: tailwindcss intellisense
        settings = { css = { lint = { unknownAtRules = "ignore" } } },
      },
      prismals = {
        filetypes = { "prisma" },
      },
      pyright = {
        settings = {
          pyright = {
            disableOrganizeImports = true,
          },
          python = {
            analysis = {
              ignore = { "*" },
            },
          },
        },
      },
      ruff = {
        cmd_env = { RUFF_TRACE = "messages" },
        init_options = {
          settings = {
            logLevel = "error",
          },
        },
      },
    },
  },
}
