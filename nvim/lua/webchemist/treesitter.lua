-- treesitter.lua

local configs = require("nvim-treesitter.configs")
configs.setup({
  -- 사용하는 언어를 추가해주세요.
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
})
