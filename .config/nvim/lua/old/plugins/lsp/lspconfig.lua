return {
  "neovim/nvim-lspconfig",
  event = { "BufReadPre", "BufNewFile" },
  dependencies = {
    "hrsh7th/cmp-nvim-lsp",
    { "j-hui/fidget.nvim", tag = "legacy" },
    "RobertBrunhage/dart-tools.nvim",
    { "antosha417/nvim-lsp-file-operations", config = true },
  },
  config = function()
    local lspconfig = require("lspconfig")
    local mason_lspconfig = require("mason-lspconfig")
    local cmp_nvim_lsp = require("cmp_nvim_lsp")
    local keymap = vim.keymap

    vim.api.nvim_create_autocmd("LspAttach", {
      group = vim.api.nvim_create_augroup("UserLspConfig", {}),
      callback = function(ev)
        local opts = { buffer = ev.buf, silent = true }

        -- NOTE: Set Keybinds
        opts.desc = "Show LSP references"
        keymap.set("n", "gR", "<cmd>Telescope lsp_references<CR>", opts)

        opts.desc = "Go to declaration"
        keymap.set("n", "gD", vim.lsp.buf.declaration, opts)

        opts.desc = "Show LSP definition"
        keymap.set("n", "gd", "<cmd>Telescope lsp_definitions<CR>", opts)

        opts.desc = "Show LSP implementation"
        keymap.set("n", "gi", "<cmd>Telescope lsp_implementations<CR>", opts)

        opts.desc = "Show LSP type definition"
        keymap.set("n", "gt", "<cmd>Telescope lsp_type_definitions<CR>", opts)

        opts.desc = "See available code actions"
        keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, opts)

        opts.desc = "Smart rename"
        keymap.set("n", "<leader>rn", vim.lsp.buf.rename, opts) -- smart rename

        opts.desc = "Show buffer diagnostics"
        keymap.set("n", "<leader>D", "<cmd>Telescope diagnostics bufnr=0<CR>", opts) -- show  diagnostics for file

        opts.desc = "Show line diagnostics"
        keymap.set("n", "<leader>d", vim.diagnostic.open_float, opts) -- show diagnostics for line

        opts.desc = "Go to previous diagnostic"
        keymap.set("n", "[d", vim.diagnostic.goto_prev, opts) -- jump to previous diagnostic in buffer

        opts.desc = "Go to next diagnostic"
        keymap.set("n", "]d", vim.diagnostic.goto_next, opts) -- jump to next diagnostic in buffer

        opts.desc = "Show documentation for what is under cursor"
        keymap.set("n", "K", vim.lsp.buf.hover, opts) -- show documentation for what is under cursor

        opts.desc = "Restart LSP"
        keymap.set("n", "<leader>rs", ":LspRestart<CR>", opts) -- mapping to restart lsp if necessary
      end,
    })
    -- used to enable autocompletion (assign to every lsp server config)
    local capabilities = cmp_nvim_lsp.default_capabilities()

    -- Change the Diagnostic symbols in the sign column (gutter)
    -- (not in youtube nvim video)
    local signs = { Error = " ", Warn = " ", Hint = "󰠠 ", Info = " " }
    for type, icon in pairs(signs) do
      local hl = "DiagnosticSign" .. type
      vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = "" })
    end

    vim.diagnostic.config({
      virtual_text = true,
      signs = false,
    })

    local dartExcludedFolders = {
      vim.fn.expand("$HOME/AppData/Local/Pub/Cache"),
      vim.fn.expand("$HOME/.pub-cache"),
      vim.fn.expand("/opt/homebrew/"),
      vim.fn.expand("$HOME/tools/flutter/"),
    }

    mason_lspconfig.setup_handlers({
      lspconfig.tsserver.setup({
        capabilities = capabilities,

        -- denols와의 충돌방지로 다음을 설정합니다.
        -- root에 deno.json, deno,jsonc 파일이 존재하면 deno로 인식합니다.
        root_dir = function(filename, bufnr)
          local denoRootDir = lspconfig.util.root_pattern("deno.json", "deno.jsonc")(filename)
          if denoRootDir then
            return nil
          end

          return lspconfig.util.root_pattern("package.json")(filename)
        end,
        single_file_support = false,
      }),
      -- lspconfig.dartls.setup({
      --   capabilities = capabilities,
      --   cmd = { "dart", "language-server", "--protocol=lsp" },
      --   filetypes = { "dart" },
      --   init_options = {
      --     onlyAnalyzeProjectsWithOpenFiles = false,
      --     suggestFromUnimportedLibraries = true,
      --     closingLabels = true,
      --     outline = false,
      --     flutterOutline = false,
      --   },
      --   settings = {
      --     dart = {
      --       analysisExcludedFolders = dartExcludedFolders,
      --       updateImportsOnRename = true,
      --       completeFunctionCalls = true,
      --       showTodos = true,
      --     },
      --   },
      -- }),
      lspconfig.dcmls.setup({
        capabilities = capabilities,
        cmd = { "dcm", "start-server", "--client=neovim" },
        filetypes = { "dart", "yaml" },
        settings = {
          dart = {
            analysisExcludedFolders = dartExcludedFolders,
          },
        },
      }),

      lspconfig.denols.setup({
        capabilities = capabilities,

        -- tsserver와의 충돌방지로 다음을 설정합니다.
        -- root에 deno.json, deno,jsonc 파일이 존재하면 deno로 인식합니다.
        root_dir = function(filename, bufnr)
          local tsserverRootDir = lspconfig.util.root_pattern("package.json")(filename)
          if tsserverRootDir then
            return nil
          end

          return lspconfig.util.root_pattern("deno.json", "deno.jsonc")(filename)
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
      }),

      lspconfig.tailwindcss.setup({
        capabilities = capabilities,
        settings = {
          -- NOTE: tailwindcss 문법 오류를 방지합니다.
          css = { validate = true, lint = { unknownAtRules = "ignore" } },
          scss = { validate = true, lint = { unknownAtRules = "ignore" } },
          less = { validate = true, lint = { unknownAtRules = "ignore" } },
        },
      }),

      lspconfig.prismals.setup({
        capabilities = capabilities,
        cmd = { "prisma-language-server", "--stdio" },
        filetypes = { "prisma" },
        root_dir = lspconfig.util.root_pattern(".igt", "package.json"),
        settings = {
          prisma = {
            prismaFmtBinPath = vim.fn.exepath("prisma-fmt"),
          },
        },
      }),

      lspconfig.graphql.setup({
        capabilities = capabilities,
        filetypes = { "graphql", "gql", "svelte", "typescriptreact", "javascriptreact" },
      }),

      -- configure emmet language server
      lspconfig.emmet_ls.setup({
        capabilities = capabilities,
        filetypes = { "html", "typescriptreact", "javascriptreact", "css", "sass", "scss", "less", "svelte" },
      }),

      -- configure lua server (with special settings)
      lspconfig.lua_ls.setup({
        capabilities = capabilities,
        settings = {
          Lua = {
            -- make the language server recognize "vim" global
            diagnostics = {
              globals = { "vim" },
            },
            completion = {
              callSnippet = "Replace",
            },
          },
        },
      }),
    })

    -- Tooltip for the lsp in bottom right
    require("fidget").setup({})

    -- Hot reload :)
    require("dart-tools")
  end,
}
