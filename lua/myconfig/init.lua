local lspconfig = require('lspconfig')
require("myconfig.remap")
--require("myconfig.nvim-lspconfig")
require("myconfig.packer")
require("myconfig.opt")
require("myconfig.nvim-cmp")
require("myconfig.debugger")
require("nvim-lsp-installer").setup({
    automatic_installation = true,
    ui = {
        icons = {
            server_installed = "✓",
            server_pending = "➜",
            server_uninstalled = "✗"
        }
    }
})
--lsps
require'lspconfig'.clangd.setup{}
require'lspconfig'.lua_ls.setup{}
require'lspconfig'.html.setup{}
require'lspconfig'.cssls.setup{}
require'lspconfig'.tailwindcss.setup{}
require'lspconfig'.robotframework_ls.setup{}

--require'lspconfig'.pyright.setup{}
require'lspconfig'.pylsp.setup{
  settings = {
    pylsp = {
      plugins = {
        pycodestyle = {
          ignore = {'W391'},
          maxLineLength = 100
        }
      }
    }
  }
}
--require'lspconfig'.html.setup{}


--vim.cmd 'colorscheme paramount-ng'
--autocmd FileType go colorscheme desert
vim.api.nvim_create_autocmd("FileType", {
  pattern = { "go", "javascript","html","c" },
  callback = function(event)
    local colorschemes = {
      go = "habamax",
      javascript = "vimterial_dark",
      html = "retrobox",
      c= "catppuccin",
    }

    local colorscheme = colorschemes[event.match]
    if colorscheme then
      print("Applying " .. colorscheme .. " for " .. event.match)
      vim.cmd("colorscheme " .. colorscheme)
    end
  end,
})

vim.cmd [[autocmd BufWritePost init.lua PackerCompile]]
