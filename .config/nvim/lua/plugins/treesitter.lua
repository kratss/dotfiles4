return {
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      highlight = { enable = true },
      indent = { enable = true },
      ensure_installed = {
        "cpp",
        "css",
        "fish",
        "gitattributes",
        "gitcommit",
        "gitignore",
        "latex",
        "make",
        "passwd",
        "sway",
        "todotxt",
        "vimdoc",
      },
    },
  },
}
