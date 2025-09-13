require("mason").setup()
require("mason-lspconfig").setup({
    ensure_installed = {
        "gopls",        -- Golang
        "terraformls",  -- Terraform
        "rust_analyzer",-- Rust
        "pyright",      -- Python
    },
})

local lspconfig = require("lspconfig")

local servers = {
    "gopls",
    "terraformls",
    "rust_analyzer",
    "pyright",
}

for _, server in ipairs(servers) do
    lspconfig[server].setup({
        capabilities = require("cmp_nvim_lsp").default_capabilities(),
    })
end

