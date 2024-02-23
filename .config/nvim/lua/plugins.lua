return {
  -- Alpha (Dashboard)
  -- Added this plugin to initial configuration
  {
    "goolord/alpha-nvim",
    lazy = true,
  },

  -- Auto Pairs
  {
    "windwp/nvim-autopairs",
  },

  -- Bufferline
  {
    "akinsho/bufferline.nvim",
    dependencies = "nvim-tree/nvim-web-devicons",
  },

  -- Codeium
  {
    "Exafunction/codeium.vim",
  },

  -- Colorscheme
  {
    "folke/tokyonight.nvim",
  },

  -- Flutter-Tools
  {
    "akinsho/flutter-tools.nvim",
    lazy = false,
    dependencies = {
      "nvim-lua/plenary.nvim",
      "stevearc/dressing.nvim", -- Optional
    },
  },

  -- Git Integration
  {
    "lewis6991/gitsigns.nvim",
  },

  -- Hop (Better Navigation)
  {
    "phaazon/hop.nvim",
    lazy = true,
  },

  -- Rainbow Highlighting
  {
    "HiPhish/nvim-ts-rainbow2",
  },

  -- Lualine
  {
    "nvim-lualine/lualine.nvim",
  },

  -- 언어 지원
  {
    "VonHeikemen/lsp-zero.nvim",
    branch = "v2.x",
    dependencies = {
      -- LSP
      { "neovim/nvim-lspconfig" }, -- Required
      { "williamboman/mason.nvim" }, -- Optional
      { "williamboman/mason-lspconfig.nvim" }, -- Optional

      -- Autocompletion
      { "hrsh7th/nvim-cmp" }, -- Requreired
      { "hrsh7th/cmp-nvim-lsp" }, -- Required
      { "hrsh7th/cmp-buffer" }, -- Optional
      { "hrsh7th/cmp-path" }, -- Optional
      { "saadparwaiz1/cmp_luasnip" }, -- Optional
      { "hrsh7th/cmp-nvim-lua" }, -- Optional

      -- Snippets
      { "L3MON4D3/LuaSnip" }, -- Required
      { "rafamadriz/friendly-snippets" }, -- Optional
      { "dsznajder/vscode-es7-javascript-react-snippets", run = "yarn install --frozen-lockfile && yarn compile" }, -- Optional (React)
    },
  },

  -- Nvimtree (File Explorer)
  {
    "nvim-neo-tree/neo-tree.nvim",
    lazy = true,
    branch = "v3.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons",
      "MunifTanjim/nui.nvim",
      "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
    },
  },

  -- Nvim-Surround
  {
    "kylechui/nvim-surround",
    config = function()
      require("nvim-surround").setup({
        -- Configuration here, or leave empty to use defaults
      })
    end,
  },

  -- Neotest
  {
    "nvim-neotest/neotest",
    dependencies = {
      "nvim-neotest/neotest-jest",
      "marilari88/neotest-vitest",
    },
  },

  -- Telescope (Fuzzy Finder)
  {
    "nvim-telescope/telescope.nvim",
    lazy = true,
    dependencies = {
      { "nvim-lua/plenary.nvim" },
    },
  },

  -- Toggle Term
  {
    "akinsho/toggleterm.nvim",
    config = true,
  },

  -- Treesitter
  {
    "nvim-treesitter/nvim-treesitter",
    -- version = "0.9.1",
  },

  -- Undo-Tree
  {
    "jiaoshijie/undotree",
    dependencies = {
      "nvim-lua/plenary.nvim",
    },
  },

  -- Which-key
  -- {
  --   "folke/which-key.nvim",
  --   lazy = true,
  -- },
}
