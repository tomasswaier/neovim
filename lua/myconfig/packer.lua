return function(use)
    use 'hrsh7th/cmp-nvim-lsp'
    use 'hrsh7th/cmp-buffer'
    use 'hrsh7th/cmp-path'
    use 'hrsh7th/cmp-cmdline'
    use 'hrsh7th/nvim-cmp'
    use 'hrsh7th/cmp-vsnip'
    use 'hrsh7th/vim-vsnip'
    use 'mfussenegger/nvim-dap'
    use 'wbthomason/packer.nvim'
    use 'rktjmp/lush.nvim'
    use { "catppuccin/nvim", as = "catppuccin" }
    use {'nyoom-engineering/oxocarbon.nvim'}
    use {'neovim/nvim-lspconfig'}
    use 'wfxr/minimap.vim'
    use {
        "williamboman/nvim-lsp-installer",
        "neovim/nvim-lspconfig",
    }
    use 'theHamsta/nvim-dap-virtual-text'
    use { "rcarriga/nvim-dap-ui", requires = {"mfussenegger/nvim-dap", "nvim-neotest/nvim-nio"} }
    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.5',
        requires = { 'nvim-lua/plenary.nvim' }
    }
    -- use "~/.config/nvim/lua/myconfig/cool_name"
    -- use "~/.config/nvim/lua/myconfig/white_suprimici"
    -- use "~/.config/nvim/lua/myconfig/hihi_hi"
end

