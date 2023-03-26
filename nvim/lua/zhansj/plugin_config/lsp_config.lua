---------------------------
------- mason setup -------
--------------------------- 
require("mason").setup()
require("mason-lspconfig").setup({
  ensure_installed = { "lua_ls", "clangd", "svlangserver"}
})


---------------------------
-- nvim-cmp capabilities --
---------------------------
require("cmp").setup {
  sources = {
    { name = 'nvim_lsp' }
  }
}
-- The nvim-cmp almost supports LSP's capabilities so You should advertise it to LSP servers..
local capabilities = require('cmp_nvim_lsp').default_capabilities()


----------------------------
-- setup language servers --
----------------------------
local lspconfig = require('lspconfig')
  -- C/C++ --
lspconfig.clangd.setup{
  capabilities = capabilities,
}
  -- lua --
lspconfig.lua_ls.setup{
  capabilities = capabilities,
}
  -- Verilog/SV --
lspconfig.svlangserver.setup{
  capabilities = capabilities,
}

---------------------------
----- global mappings -----
---------------------------
vim.keymap.set('n', '[e', vim.diagnostic.open_float)
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev)
vim.keymap.set('n', ']d', vim.diagnostic.goto_next)
vim.keymap.set('n', ']e', vim.diagnostic.setloclist)



