-- источник: https://habr.com/ru/post/586808/
-- источник: https://habr.com/ru/post/683054/

vim.cmd [[packadd packer.nvim]]

return require('packer').startup( function()

    -- сам Packer
    use 'wbthomason/packer.nvim'

    -- цветовая схема
    use({
        'rose-pine/neovim',
        as = 'rose-pine',
        config = function()
            --vim.cmd('colorscheme rose-pine')
        end
    })

    -- another one color scheme
    use({ 
        'savq/melange-nvim',
        as = 'melange',
        config = function()
            --vim.cmd('colorscheme melange')
        end
    })

    use({
        'folke/tokyonight.nvim',
        as = 'tokyonight',
        config = function()
            --vim.cmd('colorscheme tokyonight-day')
        end
    })

    use({
        'bluz71/vim-nightfly-colors',
        as = 'nightfly',
        config = function()
            vim.cmd('colorscheme nightfly')
        end
    })


    -- информационная строка внизу
    use({
        'nvim-lualine/lualine.nvim',
        requires = {'kyazdani42/nvim-web-devicons', opt=true},
        config = function()
            require('lualine').setup()
        end
    })

    -- табы вверху
    use({
        'akinsho/bufferline.nvim', 
        requires = {'kyazdani42/nvim-web-devicons'},
        config = function()
            require('bufferline').setup()
        end
    })

    -- telescope
    use({
        'nvim-telescope/telescope.nvim',
        requires = {'nvim-lua/plenary.nvim'},
        config = function()
            require('telescope').setup()
        end
    })

    -- команды vim в русской раскладке
    use 'powerman/vim-plugin-ruscmd'

    -- поддержка markdown
    -- install without yarn or npm
    use({
        "iamcco/markdown-preview.nvim",
        run = function() vim.fn["mkdp#util#install"]() end,
    })

    use({ "iamcco/markdown-preview.nvim", 
        run = "cd app && npm install", 
        setup = function() 
            vim.g.mkdp_filetypes = { "markdown" }
        end, 
        ft = { "markdown" },
    })

    -- NertTree
    use "preservim/nerdtree"
    vim.g.NERDTreeShowHidden = 1

    use "neovimhaskell/haskell-vim"
    vim.g.haskell_classic_highlighting = 1

    use "parsonsmatt/intero-neovim"
    

    -- insert new before here
end)

