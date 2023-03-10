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
    set showcmd
    " set wildmenu
    set regexpengine=1        " use old regexp engine
    set ignorecase smartcase  " ignore case only when the pattern contains no capital letters 
    set shortmess+=c
    set inccommand=split
    set completeopt=longest,noinsert,menuone,noselect,preview
    set ttyfast "should make scrolling faster
    set lazyredraw "same as above
    set visualbell
    set colorcolumn=100
    " set virtualedit=block

]])


vim.g.im_select_default = "com.apple.keylayout.ABC"



