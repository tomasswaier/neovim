return function(use)
    use 'hrsh7th/cmp-nvim-lsp'
    use 'hrsh7th/cmp-buffer'
    use "rafamadriz/friendly-snippets"
    use 'fatih/vim-go'
    use 'hrsh7th/cmp-path'
    use 'sbdchd/neoformat'
    use 'hrsh7th/cmp-cmdline'
    use 'hrsh7th/nvim-cmp'
    use 'hrsh7th/cmp-vsnip'
    use 'hrsh7th/vim-vsnip'
    use 'mfussenegger/nvim-dap'
    use 'mfussenegger/nvim-dap-python'
    use 'wbthomason/packer.nvim'

    use 'rktjmp/lush.nvim'
    use { "catppuccin/nvim", as = "catppuccin" }
    use {'nyoom-engineering/oxocarbon.nvim'}
    use {'neovim/nvim-lspconfig'}
    use 'wfxr/minimap.vim'
    use {
      "chrsm/paramount-ng.nvim",
      requires = { "rktjmp/lush.nvim" }
    }
    use {
        "williamboman/nvim-lsp-installer",
        --"neovim/nvim-lspconfig",
    }
    use 'theHamsta/nvim-dap-virtual-text'
    use 'integralist/vim-mypy'
    use { "rcarriga/nvim-dap-ui", requires = {"mfussenegger/nvim-dap", "nvim-neotest/nvim-nio"} }
    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.5',
        requires = { 'nvim-lua/plenary.nvim' }
    }
    use 'larsbs/vimterial_dark'
    -- use "~/.config/nvim/lua/myconfig/cool_name"
    -- use "~/.config/nvim/lua/myconfig/white_suprimici"
    -- use "~/.config/nvim/lua/myconfig/hihi_hi"
end

