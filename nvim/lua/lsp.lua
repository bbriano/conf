language_servers = {'gopls', 'tsserver', 'jedi_language_server', 'svelte', 'clangd'}

for i = 1, #language_servers do
    require'lspconfig'[language_servers[i]].setup{
        on_attach = require'completion'.on_attach,
    }
end

vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(
    vim.lsp.diagnostic.on_publish_diagnostics, {
        underline = true,
        virtual_text = true,
        signs = false,
        update_in_insert = false,
    }
)
