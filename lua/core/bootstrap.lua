astronvim.initialize_packer()

local colorscheme = astronvim.user_plugin_opts("colorscheme", nil, false)
vim.cmd.colorscheme(vim.tbl_contains(vim.fn.getcompletion("", "color"), colorscheme) and colorscheme or "default_theme")
vim.cmd([[
    set autoread
    au FocusGained,BufEnter * :checktime
    " 当失去焦点或者离开当前的 buffer 的时候保存
    set autowrite
    autocmd FocusLost,BufLeave * silent! update
]])


-- let g:im_select_default = 'com.apple.keylayout.ABC'
vim.g.im_select_default = "com.apple.keylayout.ABC"



