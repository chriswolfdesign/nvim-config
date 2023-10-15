function ColorMyPencils(color)
    color = color or "dichromatic"
    vim.cmd.colorscheme(color)

    vim.opt.colorcolumn = "0"
end

ColorMyPencils()

