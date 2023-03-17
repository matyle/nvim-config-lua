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
    cmd = "Farr",
  },
  {
    event = "InsertEnter",
    "wakatime/vim-wakatime",
  },
  {
    "buoto/gotests-vim",
    lazy = false,
  },
  {
    "tpope/vim-surround"
  },
  {
    "brglng/vim-im-select",
    lazy = false,
  },
  {
    "jackMort/ChatGPT.nvim",
    lazy = false,
    dependencies = {
      "MunifTanjim/nui.nvim",
      "nvim-telescope/telescope.nvim",
    },
    config = function()
      require "user.plugins.configs.chatgpt"
    end,
  },
  {
    "nvim-lua/plenary.nvim",
  },
  {
    "lervag/vimtex",
    lazy = false,
  }




}
