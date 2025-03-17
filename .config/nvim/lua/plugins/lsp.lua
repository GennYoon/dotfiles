local nvim_lsp = require("lspconfig")

return {
  "neovim/nvim-lspconfig",
  event = { "BufReadPre", "BufNewFile" },
  opts = {
    servers = {
      cssls = {
        -- NOTE: tailwindcss intellisense
        settings = { css = { lint = { unknownAtRules = "ignore" } } },
      },
      denols = {
        filetypes = { "typescript", "typescriptreact" },
        root_dir = function(...)
          return nvim_lsp.util.root_pattern("deno.jsonc", "deno.json")(...)
        end,
        handlers = {
          ["textDocument/publishDiagnostics"] = nvim_lsp.diagnostic.on_publish_diagnostics,
        },
        settings = {
          deno = {
            enable = true,
            lint = true,
            unstable = true,
            suggest = {
              imports = {
                hosts = {
                  ["https://deno.land"] = true,
                  ["https://cdn.nest.land"] = true,
                  ["https://crux.land"] = true,
                },
              },
            },
          },
        },
      },
      vtsls = {
        root_dir = function(filename)
          return nvim_lsp.util.root_pattern("package.json")(filename)
        end,
        single_file_support = false,
      },
    },
  },
}
