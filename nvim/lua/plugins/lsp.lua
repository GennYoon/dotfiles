return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        html = {
          filetypes = { "html", "handlebars", "hbs" },
        },
        emmet_language_server = {
          filetypes = { "html", "javascriptreact", "typescriptreact", "vue", "svelte", "css", "sass", "scss", "less" },
        },

        vtsls = {
          -- Biome가 포맷팅을 담당하므로 비활성화
          on_attach = function(client)
            client.server_capabilities.documentFormattingProvider = false
            client.server_capabilities.documentRangeFormattingProvider = false
          end,
        },
      },
      setup = {
        -- Biome LSP가 시작될 때 실행할 설정
        biome = function()
          -- 저장(BufWritePre)할 때마다 자동으로 실행
          vim.api.nvim_create_autocmd("BufWritePre", {
            pattern = "*.{js,ts,jsx,tsx,json}", -- 적용할 파일 확장자
            callback = function(args)
              -- 현재 버퍼에 Biome가 연결되어 있는지 확인
              local client = vim.lsp.get_clients({ bufnr = args.buf, name = "biome" })[1]
              if client then
                -- 'source.organizeImports.biome' 액션을 강제로 실행
                vim.lsp.buf.code_action({
                  apply = true,
                  context = {
                    only = { "source.organizeImports.biome" },
                    diagnostics = {},
                  },
                })
              end
            end,
          })
          return false -- 기본 설정은 계속 진행
        end,
      },
    },
  },
}
