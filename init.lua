require("shaharyar")
require("shaharyar.keymap")
require("shaharyar.set")


vim.g.lsp_zero_extend_lspconfig = 0
local lsp_zero = require('lsp-zero')
lsp_zero.extend_lspconfig()
lsp_zero.on_attach(function(client, bufnr)
  lsp_zero.default_keymaps({buffer = bufnr})
end)

require('mason').setup({})
require('mason-lspconfig').setup({
  ensure_installed = {},
  handlers = {
    lsp_zero.default_setup,
  },
})

