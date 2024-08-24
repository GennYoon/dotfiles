return {
  "stevearc/conform.nvim",
  event = { "LspAttach", "BufReadPre", "BufNewFile" },
  config = function()
    local conform = require("conform")

    conform.setup({
      formatters_by_ft = {
        lua = { "stylua" },
        javascript = { "prettier" },
        typescript = { "prettier" },
        javascriptreact = { "prettier" },
        typescriptreact = { "prettier" },
        svelte = { "prettier" },
        dart = { "dart_format" },
        rust = { "rustfmt" },
        java = { "google-java-format" },
        kotlin = { "ktlint" },
        ruby = { "standardrb" },
        css = { "prettier" },
        scss = { "prettier" },
        html = { "htmlbeautifier" },
        json = { "prettier" },
        yaml = { "yamlfix" },
        toml = { "taplo" },
        markdown = { "prettier" },
        graphql = { "prettier" },
        python = { "isort", "black" },
      },
      format_on_save = {
        timeout_ms = 1000,
        lsp_format = "fallback",
        async = false,
      },
    })
  end,
}
