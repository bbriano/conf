language_servers = {
    'clangd',
    'gopls',
    'hls',
    'jedi_language_server',
    'rust_analyzer',
    'svelte',
    'tsserver',
}

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

-- Synchronously organise (Go) imports.
function go_organize_imports_sync(timeoutms)
    local context = {source = {organizeImports = true}}
    vim.validate {context = {context, 't', true}}

    local params = vim.lsp.util.make_range_params()
    params.context = context

    local method = 'textDocument/codeAction'
    local resp = vim.lsp.buf_request_sync(0, method, params, timeoutms)

    -- imports is indexed with clientid so we cannot rely on index always is 1
    for _, v in next, resp, nil do
      local result = v.result
      if result and result[1] then
        local edit = result[1].edit
        vim.lsp.util.apply_workspace_edit(edit)
      end
    end
end
