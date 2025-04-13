local nvlsp = require "nvchad.configs.lspconfig"
local lspconfig = require "lspconfig"

nvlsp.defaults() -- load nvchad's defaults

local servers = { "ts_ls", "cssls", "tailwindcss", "gopls" }

-- lsps with default config
for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = nvlsp.on_attach,
    on_init = nvlsp.on_init,
    capabilities = nvlsp.capabilities,
  }
end

lspconfig.lexical.setup {
  filetypes = { "elixir", "eelixir", "heex", "eex" },
  cmd = { "/Users/alex/Programming/elixir/lexical/_build/dev/package/lexical/bin/start_lexical.sh" },
  settings = {},
  on_attach = nvlsp.on_attach,
  on_init = nvlsp.on_init,
  capabilities = nvlsp.capabilities,
  root_dir = function(fname)
    return lspconfig.util.root_pattern("mix.exs", ".git")(fname) or vim.loop.cwd()
  end,
}
