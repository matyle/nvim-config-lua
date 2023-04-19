return {
  -- You can also add new plugins here as well:
  -- Add plugins, the lazy syntax
  -- "andweeb/presence.nvim",
  -- {
  --   "ray-x/lsp_signature.nvim",
  --   event = "BufRead",
  --   config = function()
  --     require("lsp_signature").setup()
  --   end,
  -- },

  -- theme
  {
    "folke/tokyonight.nvim",
    lazy = false,    -- make sure we load this during startup if it is your main colorscheme
    priority = 1000, -- make sure to load this before all the other start plugins
    config = function()
      -- load the colorscheme here
      vim.cmd([[colorscheme tokyonight]])
    end,
  },
  {
    "catppuccin/nvim",
    name = "catppuccin",
    lazy = false,
    priority = 1000,
    config = function()
      require "user.plugins.configs.catppuccin"
    end,
  },
  {
    "mbledkowski/neuleetcode.vim",
    lazy = false,
  },
  {
    "APZelos/blamer.nvim",
    lazy = false,
    config = function()
      require "user.plugins.configs.blamer"
    end,
  },
  {
    event = "InsertEnter",
    "github/copilot.vim",
  },
  {
    "gcmt/wildfire.vim",
    lazy = false,
  },
  {
    "brooth/far.vim",
    lazy = false,
  },
  {
    event = "InsertEnter",
    "wakatime/vim-wakatime",
  },
  {
    ft = "go",
    "buoto/gotests-vim",
  },
  {
    "tpope/vim-surround",
    lazy = false,
  },
  {
    "brglng/vim-im-select",
    lazy = false,
  },
  {
    "SmiteshP/nvim-navbuddy",
    dependencies = {
      "SmiteshP/nvim-navic",
      "MunifTanjim/nui.nvim"
    },
    opts = { lsp = { auto_attach = true } },
    -- config = function()
    --   require "user.plugins.configs.navbuddy"
    -- end,
    lazy = false,
  },
  -- {
  --   "jackMort/ChatGPT.nvim",
  --   cmd = "ChatGPT",
  --   dependencies = {
  --     "MunifTanjim/nui.nvim",
  --     "nvim-telescope/telescope.nvim",
  --   },
  --   config = function()
  --     require "user.plugins.configs.chatgpt"
  --   end,
  -- },
  {
    "nvim-lua/plenary.nvim",
  },
  {
    "lervag/vimtex",
    ft = "tex",
  },
  {
    "mg979/vim-visual-multi",
    lazy = false,
  },
  {
    "RRethy/vim-illuminate",
    lazy = false,
  },
  {
    "junegunn/limelight.vim",
    lazy = false,
  },
  {
    "sindrets/diffview.nvim"
  },
  {
    "kevinhwang91/rnvimr",
    cmd = "RnvimrToggle",
  }

}
