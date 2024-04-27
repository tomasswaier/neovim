-- Packer configuration in your theprimeagen/packer.lua file
vim.cmd [[autocmd BufWritePost theprimeagen/packer.lua PackerCompile]]
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'mfussenegger/nvim-dap'
  use 'wbthomason/packer.nvim'
  use 'maxboisvert/vim-simple-complete'
  use 'rktjmp/lush.nvim'
  use { "catppuccin/nvim", as = "catppuccin" }
  use {'neovim/nvim-lspconfig'}
  use 'wfxr/minimap.vim'
  use 'theHamsta/nvim-dap-virtual-text'
  -- use "~/.config/nvim/lua/theprimeagen/cool_name"
  use { "rcarriga/nvim-dap-ui", requires = {"mfussenegger/nvim-dap", "nvim-neotest/nvim-nio"} }
  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.5',
    -- or                            , branch = '0.1.x',
    requires = { {'nvim-lua/plenary.nvim'} }
  }
  use "~/.config/nvim/lua/theprimeagen/white_suprimici"
 -- use "~/.config/nvim/lua/theprimeagen/hihi_hi"

end)

