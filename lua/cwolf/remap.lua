vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")
vim.keymap.set("i", "jk", "<ESC>")
vim.keymap.set("n", "<leader>n", vim.cmd.NERDTreeToggle)
vim.keymap.set("n", "<leader>z", vim.cmd.MaximizerToggle)
vim.keymap.set("n", "<leader>gb", ":Git blame<CR>")
vim.keymap.set("n", "<leader>gp", ":Git push<CR>")
vim.keymap.set("n", "<leader>gP", ":Git pull<CR>")

vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })
