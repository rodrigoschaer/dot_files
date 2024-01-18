vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    -- Theme
    use({
        'rose-pine/neovim',
        as = 'rose-pine',
        --[[ config = function()
            vim.cmd('colorscheme rose-pine')
        end
  ]] })
    use { 'mofiqul/dracula.nvim', config = function()
        vim.cmd('colorscheme dracula')
    end }
    use 'DaikyXendo/nvim-material-icon'

    -- LSP
    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v3.x',
        requires = {
            { 'williamboman/mason.nvim' },
            { 'williamboman/mason-lspconfig.nvim' },
            -- LSP Support
            { 'neovim/nvim-lspconfig' },
            -- Autocompletion
            { 'hrsh7th/nvim-cmp' },
            { 'hrsh7th/cmp-nvim-lsp' },
            { 'L3MON4D3/LuaSnip' },
        }
    }
    use('nvim-treesitter/nvim-treesitter', { run = ':TSUpdate' })
    use 'nvim-treesitter/playground'

    -- file navigation
    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.4',
        -- or                            , branch = '0.1.x',
        requires = { { 'nvim-lua/plenary.nvim' } }
    }
    use 'theprimeagen/harpoon'
    use 'mbbill/undotree'
    use 'tamton-aquib/keys.nvim'

    -- git related
    use 'tpope/vim-fugitive'
    use 'tpope/vim-rhubarb'

    -- tabstop Auto
    use 'tpope/vim-sleuth'

    -- show pending keybinds
    use {
        "folke/which-key.nvim",
        config = function()
            vim.o.timeout = true
            vim.o.timeoutlen = 300
            require("which-key").setup {
                -- your configuration comes here
                -- or leave it empty to use the default settings
                -- refer to the configuration section below
            }
        end
    }

    -- comment lines and blocks
    use { 'numToStr/Comment.nvim', opts = {} }

    -- Add indentation guides even on blank lines
    use 'lukas-reineke/indent-blankline.nvim'

    -- Set lualine as statusline
    use 'nvim-lualine/lualine.nvim'

    -- files tree
    use 'nvim-tree/nvim-tree.lua'
    use 'nvim-tree/nvim-web-devicons'

    -- debugger
    use 'mfussenegger/nvim-dap'
    use { 'jay-babu/mason-nvim-dap.nvim',
        dependencies = {
            "williamboman/mason.nvim",
            'mfussenegger/nvim-dap'
        },
        opts = {
            handlers = {}
        }
    }
    use {
        "rcarriga/nvim-dap-ui",
        dependencies = "mfussenegger/nvim-dap",
    }
end)
