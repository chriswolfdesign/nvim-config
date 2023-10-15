vim.keymap.set("n", "<leader>dt", "<cmd>call vimspector#ToggleBreakpoint()<CR>")
vim.keymap.set("n", "<leader>dT", "<cmd>call vimspector#ClearBreakpoints()<CR>")
vim.keymap.set("n", "<leader>dr", "<cmd>call vimspector#Launch()<CR>")
vim.keymap.set("n", "<leader>dq", "<cmd>call vimspector#Reset()<CR>")
vim.keymap.set("n", "<leader>dc", "<cmd>call vimspector#Continue()<CR>")
vim.keymap.set("n", "<leader>do", "<cmd>call vimspector#StepOver()<CR>")
vim.keymap.set("n", "<leader>di", "<cmd>call vimspector#StepInto()<CR>")

