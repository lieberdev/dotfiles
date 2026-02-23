return {
  "ibhagwan/fzf-lua",
  --@module "fzf-lua"
  ---@type fzf-lua.Config|{}
  opts = {
    { "borderless" },
    winopts = { fullscreen = true },
    keymap = {
      fzf = {
        ["ctrl-l"] = "select-all+accept",
      }
    },
  },
  keys = {
    { "<leader>sf", "<CMD>FzfLua files<CR>" },
    { "<leader>ss", "<CMD>FzfLua live_grep<CR>" },
    { "<leader>sw", "<CMD>FzfLua grep_cWORD<CR>" },
    { "<leader>sg", "<CMD>FzfLua git_files<CR>" },
  }
}
