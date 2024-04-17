-- Packer configuration in your theprimeagen/packer.lua file
vim.cmd [[autocmd BufWritePost theprimeagen/packer.lua PackerCompile]]
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  use "rktjmp/shipwright.nvim"
  use 'maxboisvert/vim-simple-complete'
  use 'rktjmp/lush.nvim'
  use { "catppuccin/nvim", as = "catppuccin" }
  use {'neovim/nvim-lspconfig'}
  use 'wfxr/minimap.vim'
  use "/home/maryann/.config/nvim/lua/theprimeagen/cool_name"

  use {
  'stevearc/overseer.nvim',
  commit = "68a2d344cea4a2e11acfb5690dc8ecd1a1ec0ce0",
  config = function()
    -- Configuration for overseer.nvim, if needed
  end
}

use {
  'nvim-telescope/telescope.nvim', tag = '0.1.5',
-- or                            , branch = '0.1.x',
  requires = { {'nvim-lua/plenary.nvim'} }
}
end)



