-- Instalation lazy.nvim (plugin manager)
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

-- Add plugins
require("lazy").setup({
    -- neo-tree - file manager in nvim
    {
        "nvim-neo-tree/neo-tree.nvim",
        branch = "v3.x",
        dependencies = {
          "nvim-lua/plenary.nvim",
          "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
          "MunifTanjim/nui.nvim",
        }
    },
    -- nvim-treesitter - advanced highlighting
    {'nvim-treesitter/nvim-treesitter'},
    -- LSP - language server protocol
    {'neovim/nvim-lspconfig'},
    -- Colorschemes
    {'aryansh-s/fastdark.vim'},
    {'ellisonleao/gruvbox.nvim', priority = 1000},
    {'sainnhe/gruvbox-material'},
    -- {'sainnhe/everforest'},
    -- {'sainnhe/edge'},
    -- Snippet plugin
    {
        "L3MON4D3/LuaSnip",
        -- follow latest release.
        version = "2.*",
        -- install jsregexp (optional!).
        -- build = "make install_jsregexp"
    },
    -- Autocomlete
    {'hrsh7th/cmp-nvim-lsp'},
    {'hrsh7th/cmp-buffer'},
    {'hrsh7th/cmp-path'},
    {'hrsh7th/cmp-cmdline'},
    {'hrsh7th/nvim-cmp'},
    -- Autocomplete for LuaSnip
    {'L3MON4D3/LuaSnip'},
    {'saadparwaiz1/cmp_luasnip'},
    -- LSPs manager (also DAPs, linters and formatters manager)
    {"williamboman/mason.nvim"},
    {"williamboman/mason-lspconfig.nvim"},
    {
        'nvim-telescope/telescope.nvim',
        branch = '0.1.x',
        dependencies = {'nvim-lua/plenary.nvim'}
    },
    -- Autocomplete (, [, { and etc.
    {
        'windwp/nvim-autopairs',
        event = "InsertEnter",
        opts = {} -- this is equalent to setup({}) function
    },
    -- Fast comment
    {'terrortylor/nvim-comment'},
    -- vim-airlines analog
    {
        'nvim-lualine/lualine.nvim',
        dependencies = {
            'nvim-tree/nvim-web-devicons',
            'linrongbin16/lsp-progress.nvim'
        }
    },
    -- Autoformat
    -- {'jose-elias-alvarez/null-ls.nvim'},


    -- Buffer line (with tabpage integration)
    -- Я ебал настройку этого говна
    -- Короче, разобраться как это работает
    -- Это вкладки вверху окна для работы с разными файлами
    -- {'akinsho/bufferline.nvim', version = "*", dependencies = 'nvim-tree/nvim-web-devicons'},
    
    {
        "folke/which-key.nvim",
        event = "VeryLazy",
        init = function()
            vim.o.timeout = true
            vim.o.timeoutlen = 300
        end,
        opts = {
            -- your configuration comes here
            -- or leave it empty to use the default settings
            -- refer to the configuration section below
        }
    },
    -- Syntax for Lark (.lark) (parsing lib for Python)
    {'lark-parser/vim-lark-syntax'}
    
})


--[[
-- -------------------------------------------------
    {'cooperuser/glowbeam.nvim'},  -- colorscheme
    {'joshdick/onedark.vim'},      -- colorscheme
    {'rebelot/kanagawa.nvim'},     -- colorscheme
    {
        'nvim-lualine/lualine.nvim',
        dependencies = {
            'nvim-tree/nvim-web-devicons', 'linrongbin16/lsp-progress.nvim'
        }
    },
    {'lewis6991/gitsigns.nvim'},
    {'nvim-tree/nvim-web-devicons'},
    {'akinsho/toggleterm.nvim', version = "*", config = true},
    {'Djancyp/outline'},
    {'hrsh7th/cmp-nvim-lsp-signature-help'}, {
        'linrongbin16/lsp-progress.nvim',
        event = {'VimEnter'},
        dependencies = {'nvim-tree/nvim-web-devicons'},
        config = function() require('lsp-progress').setup() end
    }, {
        'glepnir/dashboard-nvim',
        event = 'VimEnter',
        dependencies = {{'nvim-tree/nvim-web-devicons'}}
    },
    { 'hrsh7th/vim-vsnip' },
    {'hrsh7th/vim-vsnip-integ'},
{
  "folke/flash.nvim",
  event = "VeryLazy",
  ---@type Flash.Config
  opts = {},
  keys = {
    {
      "s",
      mode = { "n", "x", "o" },
      function()
require("flash").jump({
  search = {
    mode = function(str)
      return "\\<" .. str
    end,
  },
})
      end,
      desc = "Flash",
    },
    {
      "S",
      mode = { "n", "o", "x" },
      function()
        require("flash").treesitter()
      end,
      desc = "Flash Treesitter",
    },
    {
      "r",
      mode = "o",
      function()
        require("flash").remote()
      end,
      desc = "Remote Flash",
    },
    {
      "R",
      mode = { "o", "x" },
      function()
        require("flash").treesitter_search()
      end,
      desc = "Flash Treesitter Search",
    },
    {
      "<c-s>",
      mode = { "c" },
      function()
        require("flash").toggle()
      end,
      desc = "Toggle Flash Search",
    },
  },
}
});

--]]
