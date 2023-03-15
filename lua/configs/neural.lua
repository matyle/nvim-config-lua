-- Configure Neural like so in Lua
require('neural').setup({
	source = {
		openai = {
			api_key = vim.env.OPENAI_API_KEY,
		},
	},
})
