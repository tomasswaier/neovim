local lspconfig = require('lspconfig')
require("theprimeagen.remap")
require("theprimeagen.packer")
require("theprimeagen.opt")
require("theprimeagen.debugger")
require'lspconfig'.clangd.setup{}
require'lspconfig'.lua_ls.setup{}
require'lspconfig'.pyright.setup{}
require'lspconfig'.jdtls.setup{
    cmd = {'/home/maryann/Conf/jdk_ls/jdtls/bin/jdtls'}
}
vim.cmd.colorscheme "catppuccin"
vim.cmd [[autocmd BufWritePost init.lua PackerCompile]]
