function ColorMyPencils(color)
    color = color or "onedark"
    vim.cmd.colorscheme(color)

    vim.opt.colorcolumn = "0"
end

ColorMyPencils()

