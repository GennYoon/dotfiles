return {
  {
    "saghen/blink.compat",
    version = "2.*",
    lazy = true,
    opts = {},
  },
  {
    "saghen/blink.cmp",
    dependencies = { "rafamadriz/friendly-snippets" },

    version = "1.*",
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
          draw = {
            treesitter = { "lsp" },
          },
        },
        documentation = {
          auto_show = true,
          auto_show_delay_ms = 200,
        },
        ghost_text = {
          enabled = vim.g.ai_cmp,
        },
      },

      -- experimental signature help support
      -- signature = { enabled = true },

      sources = {
        -- adding any nvim-cmp sources here will enable them
        -- with blink.compat
        compat = {
          "avante_commands",
          "avante_mentions",
          "avante_files",
        },
        default = { "lsp", "path", "snippets", "buffer" },
        -- default = { "lazydev" },
        -- providers = {
        --   lazydev = {
        --     name = "LazyDev",
        --     module = "lazydev.integrations.blink",
        --     score_offset = 100, -- show at a higher priority than lsp
        --   },
        -- },
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

-- "avante_commands",
-- "avante_mentions",
-- "avante_files",
