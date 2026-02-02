return {
  {
    "saghen/blink.cmp",
    dependencies = {
      "giuxtaposition/blink-cmp-copilot",
    },
    opts = {
      -- 키맵 설정 추가
      keymap = {
        preset = "default",
        ["<Space>"] = {
          function(cmp)
            vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes("<Space>", true, true, true), "n", true)

            vim.schedule(function()
              require("blink.cmp").show({ providers = { "lsp", "copilot" } })
            end)

            return true
          end,
        },
        ["<CR>"] = { "accept", "fallback" },
      },

      -- 소스 및 우선순위 설정
      sources = {
        default = { "lsp", "copilot", "path", "snippets", "buffer" },

        providers = {
          -- [1순위] LSP: Tailwind(Class/Color) 우선순위 부스팅 적용
          lsp = {
            name = "LSP",
            module = "blink.cmp.sources.lsp",
            score_offset = 100,

            -- ▼▼▼ 핵심: 항목별 점수 조작 ▼▼▼
            transform_items = function(_, items)
              local CompletionItemKind = require("blink.cmp.types").CompletionItemKind
              local kind_co = CompletionItemKind.Color
              local kind_cl = CompletionItemKind.Class
              local kind_mod = CompletionItemKind.Module
              local kind_var = CompletionItemKind.Variable

              for _, item in ipairs(items) do
                -- Tailwind CSS 클래스(Class)와 색상(Color)은 점수 대폭 상승
                if item.kind == kind_cl or item.kind == kind_co then
                  item.score_offset = (item.score_offset or 0) + 3
                end

                -- Module(모듈)이나 Variable(변수)은 Tailwind보다 덜 중요하므로 점수 하락
                if item.kind == kind_mod or item.kind == kind_var then
                  item.score_offset = (item.score_offset or 0) - 3
                end
              end
              return items
            end,
            -- ▲▲▲▲▲▲
          },

          -- [2순위] Copilot
          copilot = {
            name = "copilot",
            module = "blink-cmp-copilot",
            score_offset = 90,
            async = true,
            transform_items = function(_, items)
              local CompletionItemKind = require("blink.cmp.types").CompletionItemKind
              local kind_idx = #CompletionItemKind + 1
              CompletionItemKind[kind_idx] = "Copilot"
              for _, item in ipairs(items) do
                item.kind = kind_idx
              end
              return items
            end,
          },

          -- 나머지 소스들
          path = { name = "Path", module = "blink.cmp.sources.path", score_offset = 3 },
          snippets = { name = "Snippets", module = "blink.cmp.sources.snippets", score_offset = 2 },
          buffer = { name = "Buffer", module = "blink.cmp.sources.buffer", score_offset = 0 },
        },
      },

      -- 2. UI 및 동작 설정 (이전 요청 유지)
      completion = {
        list = {
          -- 자동 선택 끄기
          selection = { preselect = false, auto_insert = false },
        },
        ghost_text = { enabled = false },
        menu = {
          border = "rounded",
          draw = {
            columns = { { "kind_icon" }, { "label", "label_description", gap = 1 }, { "kind" } },
          },
        },
        documentation = {
          auto_show = true,
          window = { border = "rounded" },
        },
      },

      -- 아이콘 설정
      appearance = {
        kind_icons = {
          Copilot = "",
        },
      },
    },
  },
}
