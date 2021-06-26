require'lspconfig'.hls.setup {
    settings = {languageServerHaskell = {formattingProvider = "stylish-haskell"}},
    on_attach = require'lsp'.common_on_attach
}
