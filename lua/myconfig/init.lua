local lspconfig = require('lspconfig')
require("myconfig.remap")
--require("myconfig.nvim-lspconfig")
require("myconfig.packer")
require("myconfig.opt")
require("myconfig.nvim-cmp")
require("myconfig.debugger")
require("nvim-lsp-installer").setup({
    automatic_installation = true, -- automatically detect which servers to install (based on which servers are set up via lspconfig)
    ui = {
        icons = {
            server_installed = "✓",
            server_pending = "➜",
            server_uninstalled = "✗"
        }
    }
})
require'lspconfig'.clangd.setup{}
require'lspconfig'.luau_lsp.setup{}
require'lspconfig'.pyright.setup{}
require'lspconfig'.html.setup{}
vim.opt.background = "dark" -- set this to dark or light
vim.cmd.colorscheme "oxocarbon"
vim.cmd [[autocmd BufWritePost init.lua PackerCompile]]

