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
    require'lspconfig'[language_servers[i]].setup{}
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
require'compe'.setup {
    enabled = true;
    autocomplete = true;
    debug = false;
    min_length = 1;
    preselect = 'enable';
    throttle_time = 80;
    source_timeout = 200;
    incomplete_delay = 400;
    max_abbr_width = 100;
    max_kind_width = 100;
    max_menu_width = 100;
    documentation = true;

    source = {
        path = true;
        buffer = true;
        calc = true;
        spell = true;
        nvim_lsp = true;
        nvim_lua = true;
        vsnip = true;
        ultisnips = true;
    };
}

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
