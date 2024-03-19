require("theprimeagen.remap")
require("theprimeagen.packer")
require'lspconfig'.clangd.setup{}
require'lspconfig'.lua_ls.setup{}
require'lspconfig'.pyright.setup{}
require('overseer').setup({
    task_list = {
      direction = "bottom",
      min_height = 25,
      max_height = 25,
      default_detail = 1
    },
}
)


vim.cmd [[autocmd BufWritePost init.lua PackerCompile]]
local lspconfig = require('lspconfig')
lspconfig.clangd.setup {}
