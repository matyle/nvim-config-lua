return {
  {
    "folke/tokyonight.nvim",
    lazy = false,    -- make sure we load this during startup if it is your main colorscheme
    priority = 1000, -- make sure to load this before all the other start plugins
    config = function()
      -- load the colorscheme here
      vim.cmd [[colorscheme tokyonight]]
    end,
  },
  {
    "catppuccin/nvim",
    name = "catppuccin",
    lazy = false,
    priority = 1000,
    config = function() require "user.plugins.configs.catppuccin" end,
  },
  {
    "mbledkowski/neuleetcode.vim",
    lazy = false,
  },
  {
    "APZelos/blamer.nvim",
    lazy = false,
    config = function() require "user.plugins.configs.blamer" end,
  },
  {
    event = "InsertEnter",
    "github/copilot.vim",
  },
  {
    "voldikss/vim-translator",
    lazy = false,
  },
  {
    "Exafunction/codeium.vim",
    -- event = "InsertEnter",
    config = function()
      -- Change '<C-g>' here to any keycode you like.
      vim.keymap.set("i", "<C-g>", function() return vim.fn["codeium#Accept"]() end, { expr = true })
      vim.keymap.set("i", "<c-;>", function() return vim.fn["codeium#CycleCompletions"](1) end, { expr = true })
      vim.keymap.set("i", "<c-,>", function() return vim.fn["codeium#CycleCompletions"](-1) end, { expr = true })
      vim.keymap.set("i", "<c-x>", function() return vim.fn["codeium#Clear"]() end, { expr = true })
    end,
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
    "ggandor/leap.nvim",
    dependencies = {
      "tpope/vim-repeat",
    },
    config = function() require "user.plugins.configs.leap" end,
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
    "will133/vim-dirdiff",
    cmd = "DirDiff",
  },
  {
    "SmiteshP/nvim-navbuddy",
    dependencies = {
      "SmiteshP/nvim-navic",
      "MunifTanjim/nui.nvim",
    },
    -- opts = { lsp = { auto_attach = true } },
    lazy = false,
    config = function() require "user.plugins.configs.navbuddy" end,
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
    "sindrets/diffview.nvim",
  },
  {
    "sainnhe/edge",
    lazy = true,
    config = function() require "user.plugins.configs.edge" end,
  },
  -- {
  --   "akinsho/bufferline.nvim",
  --   event = { "BufReadPost", "BufAdd", "BufNewFile" },
  --   config = function() require "user.plugins.configs.bufferline" end,
  -- },
  {
    "j-hui/fidget.nvim",
    event = "LspAttach",
    config = function() require "user.plugins.configs.fidget" end,
  },
  -- {
  --   "lewis6991/gitsigns.nvim",
  --   event = { "CursorHold", "CursorHoldI" },
  --   config = function() require "user.plugins.configs.gitsigns" end,
  -- },
  {
    "karb94/neoscroll.nvim",
    event = "BufReadPost",
    config = function() require "user.plugins.configs.neoscroll" end,
  },
  {
    "shaunsingh/nord.nvim",
    lazy = true,
    config = function() require "user.plugins.configs.nord" end,
  },
  {
    "folke/paint.nvim",
    event = { "CursorHold", "CursorHoldI" },
    config = function() require "user.plugins.configs.paint" end,
  },
  {
    "zbirenbaum/neodim",
    event = "LspAttach",
    config = function() require "user.plugins.configs.neodim" end,
  },
  {
    "edluffy/specs.nvim",
    event = "CursorMoved",
    config = function() require "user.plugins.configs.specs" end,
  },
  {
    "nvim-tree/nvim-web-devicons",
    lazy = true,
  },
}
