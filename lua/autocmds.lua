-- Turn off paste mode when leaving insert
vim.api.nvim_create_autocmd("InsertLeave", {
	pattern = "*",
	command = "set nopaste",
})

-- Disable the concealing in some file format
vim.api.nvim_create_autocmd("FileType", {
	pattern = { "json", "jsonc" },
	callback = function()
		vim.opt.conceallevel = 0
	end,
})
