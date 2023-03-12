astronvim.initialize_packer()

local colorscheme = astronvim.user_plugin_opts("colorscheme", nil, false)
vim.cmd.colorscheme(vim.tbl_contains(vim.fn.getcompletion("", "color"), colorscheme) and colorscheme or "default_theme")
vim.cmd([[
    set autoread
    au FocusGained,BufEnter * :checktime
    " 当失去焦点或者离开当前的 buffer 的时候保存
    set autowrite
    autocmd FocusLost,BufLeave * silent! update
    let &t_ut=''
    set autochdir
" 只有一个全局的 status line，而不是每一个 window 一个
    set laststatus=3
    set hidden
    set noexpandtab
    set tabstop=2
    set shiftwidth=2
    set softtabstop=2
    set autoindent
    set list
    set listchars=tab:\|\ ,trail:▫
    set scrolloff=4
    set ttimeoutlen=0
   " set notimeout
    set viewoptions=cursor,folds,slash,unix
    set wrap
    set tw=0
    set showtabline=1
    set indentexpr=
    set foldmethod=indent
    set foldlevel=99
    set foldenable
    set formatoptions-=tc
    set splitright
    set splitbelow
    set noshowmode
    set wildignore+=*/node_modules/*,*/.git/*,.DS_Store,*/venv/*,*/__pycache__/*,*.pyc
    " 避免当行过长卡顿
    set showcmd
    " set wildmenu
    set ignorecase
    set smartcase
    set shortmess+=c
    set inccommand=split
    set completeopt=longest,noinsert,menuone,noselect,preview
    set ttyfast "should make scrolling faster
    set lazyredraw "same as above
    set visualbell
    silent !mkdir -p $HOME/.config/nvim/tmp/backup
    silent !mkdir -p $HOME/.config/nvim/tmp/undo
    "silent !mkdir -p $HOME/.config/nvim/tmp/sessions
    set backupdir=$HOME/.config/nvim/tmp/backup,.
    set directory=$HOME/.config/nvim/tmp/backup,.
    " 让退出 vim 之后 undo 消息不消失
    set undofile
    set undodir=$HOME/.config/nvim/tmp/undo,.
    set colorcolumn=100
    set updatetime=100
    " set virtualedit=block

]])


-- let g:im_select_default = 'com.apple.keylayout.ABC'
vim.g.im_select_default = "com.apple.keylayout.ABC"



