return {
	{
		-- INFO: Disable diagnostics UI for markdown files
		"neovim/nvim-lspconfig",
		opts = {
			-- This ensures that for markdown, we just don't start the diagnostic engine
			diagnostics = {
				underline = true,
				update_in_insert = false,
				virtual_text = {
					spacing = 4,
					source = "if_many",
					prefix = "●",
				},
				severity_sort = true,
			},
		},
	},
	-- Specific logic to disable for Markdown
	{
		"neovim/nvim-lspconfig",
		opts = function(_, opts)
			-- Disable diagnostics globally for specific filetypes
			vim.api.nvim_create_autocmd("FileType", {
				pattern = { "markdown" },
				callback = function()
					vim.diagnostic.enable(false)
				end,
			})
		end,
	},
}
