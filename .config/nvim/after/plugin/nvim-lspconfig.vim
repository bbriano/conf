lua << EOF
language_servers = {
    'clangd',
    'gopls',
    'hls',
    'jedi_language_server',
    'rust_analyzer',
    'svelte',
    'tsserver',
    'vimls',
}

for i = 1, #language_servers do
    require'lspconfig'[language_servers[i]].setup{
        handlers = {
            ["textDocument/publishDiagnostics"] = function() end -- No diagnostics
        }
    }
end
EOF
