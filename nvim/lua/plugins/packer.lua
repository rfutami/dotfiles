vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerCompile
  augroup end
]])

vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function()
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'
    use 'Shatur/neovim-ayu'
    use { 'mhinz/vim-startify' } 
    use {                                              -- filesystem navigation
        'kyazdani42/nvim-tree.lua',
        requires = 'kyazdani42/nvim-web-devicons'        -- filesystem icons
    }
    use { 'DanilaMihailov/beacon.nvim' } 
    use { 'majutsushi/tagbar' }
    use { 'Yggdroot/indentLine' }
    use { 'windwp/nvim-autopairs' }
    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.0',
        -- or                            , branch = '0.1.x',
        requires = { {'nvim-lua/plenary.nvim'} }
    }

    use {
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate'
    }

    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'kyazdani42/nvim-web-devicons', opt = true }
    }

    use 'neovim/nvim-lspconfig'
    use 'williamboman/nvim-lsp-installer'

    use 'hrsh7th/cmp-nvim-lsp'
    use 'hrsh7th/cmp-buffer'
    use 'hrsh7th/cmp-path'
    use 'hrsh7th/cmp-cmdline'
    use 'hrsh7th/nvim-cmp'
    use 'L3MON4D3/LuaSnip'
    use 'saadparwaiz1/cmp_luasnip'
    -- Lua
    use {
        "folke/which-key.nvim",
        config = function()
        require("which-key").setup {
          -- your configuration comes here
          -- or leave it empty to use the default settings
          -- refer to the configuration section below
        }
        end
    }
    use {
         'lewis6991/gitsigns.nvim',
         -- tag = 'release' -- To use the latest release
    }
    use 'tpope/vim-fugitive'
    use 'tpope/vim-commentary'
    use {
        "akinsho/toggleterm.nvim", tag = 'v2.*', config = function()
            require("toggleterm").setup()
        end
    }
    use 'windwp/nvim-spectre'
end)

