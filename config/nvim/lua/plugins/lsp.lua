return {
  "mason-org/mason-lspconfig.nvim",
  lazy = false,
  opts = {},
  dependencies = {
    { "mason-org/mason.nvim", opts = {} },
    "neovim/nvim-lspconfig",
  },
  keys = {
    { "<leader>gd", vim.lsp.buf.definition },
    { "<leader>gd", "<C-]>", ft = "man" },
    { "<leader>o", vim.diagnostic.open_float },
    { "<leader>c", vim.lsp.buf.code_action },
    { "<leader>rn", vim.lsp.buf.rename },
    { "<ctrl>l", vim.diagnostic.setqflist }
  },
}
