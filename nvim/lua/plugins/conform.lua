return {
  "stevearc/conform.nvim",
  event = { "BufWritePre" },
  cmd = { "ConformInfo" },
  optional = true,
  keys = {
    {
      "<leader>cf",
      function()
        require("conform").format({ async = true }, function(err, did_edit)
          if not err and did_edit then
            vim.notify("Code formatted", vim.log.levels.INFO, { title = "Conform" })
          end
        end)
      end,
      mode = { "n", "v" },
      desc = "Format buffer",
    },
  },
  opts = {
    formatters_by_ft = {
      -- Go
      go = { "goimports", "gofmt" },

      -- Lua
      lua = { "stylua" },

      -- Web technologies
      javascript = { "biome", "biome-organize-imports" },
      typescript = { "biome", "biome-organize-imports" },
      javascriptreact = { "biome", "biome-organize-imports" },
      typescriptreact = { "biome", "biome-organize-imports" },
      json = { "biome", "biome-organize-imports" },
      jsonc = { "biome", "biome-organize-imports" },
      yaml = { "biome", "biome-organize-imports" },
      markdown = { "biome", "biome-organize-imports" },
      html = { "biome", "biome-organize-imports" },
      css = { "biome", "biome-organize-imports" },
      scss = { "biome", "biome-organize-imports" },

      -- Python
      python = { "isort", "black" },

      -- PHP/Laravel
      php = { "pint" },

      -- Shell
      sh = { "shfmt" },
      bash = { "shfmt" },

      -- Other (system tools)
      rust = { "rustfmt" }, -- comes with Rust installation

      -- Additional file types (uncomment as needed)
      -- markdown = { "markdownlint" },
      -- yaml = { "yamllint" },
      -- toml = { "taplo" },
    },
    default_format_opts = {
      lsp_format = "fallback",
    },
    -- format_on_save = {
    --   timeout_ms = 1000,
    --   lsp_format = "fallback",
    -- },
  },
}
