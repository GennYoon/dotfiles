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
      denols = {
        -- NOTE: typescript를 이용할때 deno formatting을 하지 않게 합니다.
        root_dir = function(filename)
          local is_deno = require("lspconfig.util").root_pattern("deno.json", "deno.jsonc")
          if not is_deno then
            return nil
          end

          return require("lspconfig.util").root_pattern("deno.json", "deno.jsonc")(filename)
        end,
        init_options = {
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
      vtsls = {
        -- NOTE: deno를 이용할때 typescript formatting을 하지 않게 합니다.
        root_dir = function(filename)
          local is_deno = require("lspconfig.util").root_pattern("deno.json", "deno.jsonc")

          if is_deno then
            return nil
          end
          return require("lspconfig.util").root_pattern("package.json")(filename)
        end,
        single_file_support = true,
      },
    },
  },
}
