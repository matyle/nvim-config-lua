local telescope = require "telescope"
local actions = require "telescope.actions"

telescope.setup(astronvim.user_plugin_opts("plugins.telescope", {
	defaults = {
		prompt_prefix = " ",
		wrap_results = true,
		selection_caret = " ",
		entry_prefix = "  ",
		initial_mode = "insert",
		selection_strategy = "reset",
		sorting_strategy = "ascending",
		file_ignore_patterns = { "^vendor/", "^target/" },
		-- prompt_prefix = string.format("%s ", astronvim.get_icon "Search"),
		-- selection_caret = string.format("%s ", astronvim.get_icon "Selected"),
		path_display = { "truncate" },
		-- sorting_strategy = "ascending",
		layout_config = {
			horizontal = {
				prompt_position = "top",
				preview_width = 0.55,
				results_width = 0.8,
			},
			vertical = {
				mirror = false,
			},
			width = 0.87,
			height = 0.80,
			preview_cutoff = 120,
		},
		mappings = {
			i = {
				["<C-n>"] = actions.cycle_history_next,
				["<C-p>"] = actions.cycle_history_prev,
				["<C-j>"] = actions.move_selection_next,
				["<C-k>"] = actions.move_selection_previous,
			},
			n = { ["q"] = actions.close },
		},
	},
	extensions = {
		fzf = {
			fuzzy = true,                -- false wil only do exact matching
			override_generic_sorter = true, -- override then generic sorter
			override_file_sorter = true, -- override then file sorter
			case_mode = "smart_case",    -- or "ignore_case" or "respect_case"
		},
		aerial = {
			-- Display symbols as <root>.<parent>.<symbol>
			show_nesting = {},
		},
	},
}))

astronvim.conditional_func(telescope.load_extension, pcall(require, "notify"), "notify")
astronvim.conditional_func(telescope.load_extension, pcall(require, "aerial"), "aerial")
