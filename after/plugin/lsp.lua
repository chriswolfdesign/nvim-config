local lsp = require("lsp-zero")

lsp.preset("recommended")

local cmp = require("cmp")
local cmp_select = {behavior = cmp.SelectBehavior.Select}
local cmp_mappings = lsp.defaults.cmp_mappings({
	['<C-p>'] = cmp.mapping.select_prev_item(cmp_select),
	['<C-n>'] = cmp.mapping.select_next_item(cmp_select),
	['<C-y>'] = cmp.mapping.confirm({ select = true }),
	['<C-Space>'] = cmp.mapping.complete(),
})

lsp.on_attach(function(client, bufnr)
	lsp.default_keymaps({bufnr = bufnr})
end)

require("mason").setup({})

require("mason-lspconfig").setup({
	ensure_installed = {"rust_analyzer", "gopls"},
	handlers = {
		lsp.default_setup,
	}
})

lsp.set_preferences({
	sign_icons = { }
})


vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, opts)
vim.keymap.set("n", "K", function() vim.lsp.buf.hover() end, opts)
vim.keymap.set("n", "<leader>vws", function() vim.lsp.buf.wokrspace_symbol() end, opts)
vim.keymap.set("n", "<leader>vd", function() vim.lsp.buf.open_float() end, opts)
vim.keymap.set("n", "[d", function() vim.diagnostic.goto_next() end, opts)
vim.keymap.set("n", "]d", function() vim.diagnostic.goto_prev() end, opts)
vim.keymap.set("n", "<leader>vca", function() vim.lsp.buf.code_action() end, opts)
vim.keymap.set("n", "<leader>vrn", function() vim.lsp.buf.rename() end, opts)
vim.keymap.set("n", "<leader>vrr", "<cmd>Telescope lsp_references<cr>")
vim.keymap.set("i", "<C-h>", function() vim.lsp.buf.signature_help() end, opts)

lsp.setup()
