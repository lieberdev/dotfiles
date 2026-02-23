return {
  "nvim-treesitter/nvim-treesitter",
  lazy = false,
  build = ":TSUpdate",
  config = function()
    require("nvim-treesitter.configs").setup({
      auto_install = true,
      highlight = {
        -- Needed for indentation
        additional_vim_regex_highlighting = true,
      },
      indent = {
        enable = true
      },
    })
  end,
}
