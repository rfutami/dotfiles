require("nvim-lsp-installer").setup {
    automatic_installation = true;
}

local lspconfig = require("lspconfig")

lspconfig.sumneko_lua.setup {
    on_attach = on_attach,
    flags = lsp_flags,
    settings = {
        Lua = {
          diagnostics = {
            globals = { 'vim', 'use' }
          },
          --workspace = {
            -- Make the server aware of Neovim runtime files
            --library = {[vim.fn.expand('$VIMRUNTIME/lua')] = true, [vim.fn.expand('$VIMRUNTIME/lua/vim/lsp')] = true}
          --}
        }
    },
}

lspconfig.intelephense.setup {
    on_attach = on_attach,
    flags = lsp_flags,
}
