return {
  "williamboman/mason.nvim",
  dependencies = {
    "williamboman/mason-lspconfig.nvim",
    "WhoIsSethDaniel/mason-tool-installer.nvim",
  },
  config = function()
    -- import mason
    local mason = require("mason")

    -- import mason-lspconfig
    local mason_lspconfig = require("mason-lspconfig")

    local mason_tool_installer = require("mason-tool-installer")

    -- enable mason and configure icons
    mason.setup({
      ui = {
        icons = {
          package_installed = "✓",
          package_pending = "➜",
          package_uninstalled = "✗",
        },
      },
    })

    mason_lspconfig.setup({
      -- list of servers for mason to install
      ensure_installed = {
        "tsserver", -- Typescript
        "tailwindcss", -- Tailwindcss
        "lua_ls",
        "html", -- HTML
        "cssls", -- CSS
        "jsonls", -- JSON
        "graphql",
        "emmet_ls",
        "prismals",
        "pyright",
        "tflint", -- terraform
        -- "gopls", -- Go
        "taplo", -- TOML
        "yamlls", -- YAML
        "mdx_analyzer", -- MDX
        "dockerls",
        "docker_compose_language_service",
        "denols", -- Deno
        -- "svelte",
      },
    })

    mason_tool_installer.setup({
      ensure_installed = {
        "prettier", -- prettier formatter
        "stylua", -- lua formatter
        "isort", -- python formatter
        "black", -- python formatter
        "pylint",
        "eslint_d",
      },
    })
  end,
}
