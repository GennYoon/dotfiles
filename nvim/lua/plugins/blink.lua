return {
  { "L3MON4D3/LuaSnip", keys = {} },
  {
    "saghen/blink.compat",
    version = "2.*",
    lazy = true,
    opts = {},
  },
  {
    "saghen/blink.cmp",
    dependencies = { "rafamadriz/friendly-snippets" },

    version = "*",
    ---@module 'blink.cmp'
    ---@type blink.cmp.Config
    opts = {
      snippets = {
        expand = function(snippet, _)
          return LazyVim.cmp.expand(snippet)
        end,
      },
      appearance = {
        use_nvim_cmp_as_default = false,
        nerd_font_variant = "mono",
      },
      completion = {
        accept = {
          -- experimental auto-brackets support
          auto_brackets = {
            enabled = true,
          },
        },
        menu = {
          border = nil,
          scrolloff = 1,
          scrollbar = false,
          draw = {
            columns = {
              { "kind_icon" },
              { "label", "label_description", gap = 1 },
              { "kind" },
              { "source_name" },
            },
          },
        },
        documentation = {
          window = {
            border = nil,
            scrollbar = false,
            winhighlight = "Normal:BlinkCmpDoc,FloatBorder:BlinkCmpDocBorder,EndOfBuffer:BlinkCmpDoc",
          },
          auto_show = true,
          auto_show_delay_ms = 500,
        },
        ghost_text = {
          enabled = vim.g.ai_cmp,
        },
      },

      -- experimental signature help support
      signature = { enabled = true },

      sources = {
        -- adding any nvim-cmp sources here will enable them
        -- with blink.compat
        compat = {
          "avante_commands",
          "avante_mentions",
          "avante_files",
        },
        default = { "lazydev", "lsp", "path", "snippets", "buffer" },
        providers = {
          lazydev = {
            name = "LazyDev",
            module = "lazydev.integrations.blink",
            score_offset = 100,
          },
        },
      },

      cmdline = {
        enabled = false,
      },

      keymap = {
        preset = "enter",
        ["<C-y>"] = { "select_and_accept" },
      },
    },
  },
}
