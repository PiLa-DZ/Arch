return {
	{
		-- INFO: This Disable (Inlay Hint) UI
		"neovim/nvim-lspconfig",
		opts = {
			-- This is the key setting for LazyVim's UI
			inlay_hints = {
				enabled = false,
			},
		},
	},
}
