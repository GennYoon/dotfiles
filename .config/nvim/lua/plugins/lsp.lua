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
      postgres_lsp = {
        cmd = { "postgrestools", "lsp-proxy" },
        filetypes = { "sql" },
        root_dir = vim.fs.root(0, { "postgrestools.jsonc" }),
        single_file_support = true,
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
