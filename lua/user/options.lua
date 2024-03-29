-- set vim options here (vim.<first_key>.<second_key> = value)
return {
  opt = {
    -- set to true or false etc.
    relativenumber = true, -- sets vim.opt.relativenumber
    number = true,         -- sets vim.opt.number
    spell = false,         -- sets vim.opt.spell
    signcolumn = "auto",   -- sets vim.opt.signcolumn to auto
    wrap = false,          -- sets vim.opt.wrap
    cursorline = true,     -- sets vim.opt.cursorline
    swapfile = false,      -- sets vim.opt.swapfile
    autoindent = true,     -- sets vim.opt.autoindent
    autoread = true,       -- sets vim.opt.autoread
  },
  g = {
    mapleader = " ",                 -- sets vim.g.mapleader
    autoformat_enabled = true,       -- enable or disable auto formatting at start (lsp.formatting.format_on_save must be enabled)
    cmp_enabled = true,              -- enable completion at start
    autowrite = true,                -- enable autowrite at start
    diagnostics_mode = 3,            -- set the visibility of diagnostics in the UI (0=off, 1=only show in status line, 2=virtual text off, 3=all on)
    icons_enabled = true,            -- disable icons in the UI (disable if no nerd font is available, requires :PackerSync after changing)
    ui_notifications_enabled = true, -- disable notifications when toggling UI elements
    blamer_enabled = 1,
    blamer_delay = 500,
    blamer_show_in_visual_modes = 0,
    blamer_show_in_insert_modes = 0,
    blamer_date_format = '%Y-%m-%d %H:%M:%S',
    vimtex_view_general_viewer = 'zathura',
    vimtex_view_method = "zathura",
    leetcode_browser = 'chrome', -- sets vim.g.leetcode_browser
    autochdir = true,            -- sets vim.g.autochdir
    leetcode_china = 1
  },
}
-- If you need more control, you can use the function()...end notation
-- return function(local_vim)
--   local_vim.opt.relativenumber = true
--   local_vim.g.mapleader = " "
--   local_vim.opt.whichwrap = vim.opt.whichwrap - { 'b', 's' } -- removing option from list
--   local_vim.opt.shortmess = vim.opt.shortmess + { I = true } -- add to option list
--
--
--   return local_vim
-- end
-- end
