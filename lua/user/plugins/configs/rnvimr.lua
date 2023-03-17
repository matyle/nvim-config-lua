-- let g:rnvimr_pick_enable = 1
-- nnoremap <silent> ,r :RnvimrToggle<CR>
-- tnoremap <silent> ,r <C-\><C-n>:RnvimrToggle<CR>
-- let g:rnvimr_action = {
-- 			\ '<C-t>': 'NvimEdit tabedit',
-- 			\ '<C-x>': 'NvimEdit split',
-- 			\ '<C-v>': 'NvimEdit vsplit',
-- 			\ 'gw': 'JumpNvimCwd',
-- 			\ 'yw': 'EmitRangerCwd'
-- 			\ }
--
-- 		use lua write above 
vim.g.rnvimr_pick_enable = 1
vim.g.rnvimr_action = {
	['<C-t>'] = 'NvimEdit tabedit',
	['<C-x>'] = 'NvimEdit split',
	['<C-v>'] = 'NvimEdit vsplit',
	['gw'] = 'JumpNvimCwd',
	['yw'] = 'EmitRangerCwd'
}
