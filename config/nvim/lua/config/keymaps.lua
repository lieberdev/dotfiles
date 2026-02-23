vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

-- better J
vim.keymap.set("n", "J", "mzJ`z")

-- move selected stuff
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- better indent
vim.keymap.set("v", "<", "<gv")
vim.keymap.set("v", ">", ">gv")

-- center jumps
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- do smth without buffer change
vim.keymap.set({ "n", "x" }, "x", [["_x]]) -- overwrite
vim.keymap.set("x", "<leader>p", [["_dP]])
vim.keymap.set({ "n", "x" }, "<leader>y", [["+y]])
vim.keymap.set({ "n", "x" }, "<leader>d", [["_d]])

-- window management
vim.keymap.set("n", "<leader>h", "<C-w>h")
vim.keymap.set("n", "<leader>j", "<C-w>j")
vim.keymap.set("n", "<leader>k", "<C-w>k")
vim.keymap.set("n", "<leader>l", "<C-w>l")

vim.keymap.set("n", "<Leader>J" , ":resize -5<CR>", { silent = true })
vim.keymap.set("n", "<Leader>K", ":resize +5<CR>", { silent = true })
vim.keymap.set("n", "<Leader>H", ":vertical resize +5<CR>", { silent = true })
vim.keymap.set("n", "<Leader>L", ":vertical resize -5<CR>", { silent = true })

-- custom fullscreen
vim.keymap.set("n", "<leader>f", function()
  if vim.g.zoomed then
    vim.cmd('tab close')
    vim.g.zoomed = nil
  else
    vim.cmd('tab split')
    vim.g.zoomed = 'Z'
  end
end)

vim.keymap.set("n", "<C-f>", "<CMD>silent !tmux neww tmux-sessionizer<CR>")

vim.api.nvim_create_user_command('Preview', function()
  local tmp = os.tmpname() .. ".html"
  local file = vim.fn.expand('%:p')
  vim.cmd('silent !pandoc "' .. file .. '" -s -o "' .. tmp .. '" && open "' .. tmp .. '"')
end, {})
