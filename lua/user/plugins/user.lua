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
  }




}
