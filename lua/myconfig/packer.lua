require('pckr').add {
    'hrsh7th/cmp-nvim-lsp',
    'hrsh7th/cmp-buffer',
    'rafamadriz/friendly-snippets',
    'fatih/vim-go',
    'hrsh7th/cmp-path',
    'sbdchd/neoformat',
    'hrsh7th/cmp-cmdline',
    'hrsh7th/nvim-cmp',
    'hrsh7th/cmp-vsnip',
    'hrsh7th/vim-vsnip',
    'mfussenegger/nvim-dap',
    'mfussenegger/nvim-dap-python',
    'wbthomason/packer.nvim',

    'rktjmp/lush.nvim',
    { "catppuccin/nvim", as = "catppuccin" },
    'nyoom-engineering/oxocarbon.nvim',
    'neovim/nvim-lspconfig',
    'wfxr/minimap.vim',

    {
        "chrsm/paramount-ng.nvim",
        requires = { "rktjmp/lush.nvim" }
    },

    {
        "williamboman/nvim-lsp-installer",
        -- requires = { "neovim/nvim-lspconfig" }, -- optional
    },

    'theHamsta/nvim-dap-virtual-text',
    'integralist/vim-mypy',
    {
        "rcarriga/nvim-dap-ui",
        requires = {
            "mfussenegger/nvim-dap",
            "nvim-neotest/nvim-nio"
        }
    },

    {
        'nvim-telescope/telescope.nvim',
        tag = '0.1.5',
        requires = { 'nvim-lua/plenary.nvim' }
    },

    'larsbs/vimterial_dark',

    -- Optional local plugins
    -- "~/.config/nvim/lua/myconfig/cool_name",
    -- "~/.config/nvim/lua/myconfig/white_suprimici",
    -- "~/.config/nvim/lua/myconfig/hihi_hi"
}

