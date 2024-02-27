return {
  {
    "nvim-treesitter/nvim-treesitter",
    -- tag = "v0.9.1",
    opts = {
      ensure_installed = {
        "cpp",
        "lua",
        "java",
        "kotlin",
        "go",
        "rust",
        "python",
        "javascript",
        "typescript",
        "tsx",
        "markdown",
        "yaml",
      },
      query_linter = {
        enbale = true,
        use_virtual_text = true,
        lint_events = { "BufWrite", "CursorHold" },
      },
      sync_install = false,
      -- 설치를 무시할 언어 목록
      ignore_install = { "" },
      highlight = {
        -- false는 전체 확장 기능을 비활성화합니다.
        enable = true,
        -- 비활성화할 언어 목록
        disable = { "" },
        additional_vim_regex_highlighting = true,
      },
      indent = { enable = true, disable = { "yaml" } },
      autotag = {
        enable = true,
        enable_rename = true,
        enable_close = true,
        enable_close_on_slash = true,
        filetype = { "html", "xml" },
      },
      textobjects = {
        move = {
          enable = true,
          goto_next_start = { ["]f"] = "@function.outer", ["]c"] = "@class.outer" },
          goto_next_end = { ["]F"] = "@function.outer", ["]C"] = "@class.outer" },
          goto_previous_start = { ["[f"] = "@function.outer", ["[c"] = "@class.outer" },
          goto_previous_end = { ["[F"] = "@function.outer", ["[C"] = "@class.outer" },
        },
      },
    },
  },
}