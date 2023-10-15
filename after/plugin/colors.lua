function ColorMyPencils(color)
	color = color or "onedark"
	vim.cmd.colorscheme(color)
end

ColorMyPencils()

vim.api.nvim_set_hl(0, "Normal", {ctermbg = "none"})
vim.api.nvim_set_hl(0, "NonText", {ctermbg = "none"})
