return {
  "stevearc/conform.nvim",
  event = { "BufReadPre", "BufNewFile" },
  config = function()
    local conform = require("conform")

    conform.setup({
      formatters_by_ft = {

        lua = { "stylua" },
        javascript = { { "prettierd", "prettier" } },
        typescript = { { "prettierd", "prettier" } },
        javascriptreact = { { "prettierd", "prettier" } },
        typescriptreact = { { "prettierd", "prettier" } },
        svelte = { { "prettierd", "prettier" } },
        dart = { "dart_format" },
        rust = { "rustfmt" },
        java = { "google-java-format" },
        kotlin = { "ktlint" },
        ruby = { "standardrb" },
        css = { { "prettierd", "prettier" } },
        scss = { { "prettierd", "prettier" } },
        html = { "htmlbeautifier" },
        json = { { "prettierd", "prettier" } },
        yaml = { "yamlfix" },
        toml = { "taplo" },
        markdown = { { "prettierd", "prettier" } },
        graphql = { { "prettierd", "prettier" } },
        python = { "isort", "black" },
      },
      format_on_save = {
        timeout_ms = 500,
        lsp_format = "fallback",
        async = false,
      },
    })
  end,
}
