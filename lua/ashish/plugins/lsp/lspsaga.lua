-- import lspsaga safely
local saga_status, saga = pcall(require, "lspsaga")
if not saga_status then
	return
end

saga.setup({
	-- keybinds for navigation in lspsaga window
	scroll_preview = { scroll_down = "<C-f>", scroll_up = "<C-b>" },
	-- use enter to open fi:le with definition preview
	definition = {
		open = "<CR>",
		edit = "o",
		quit = "q",
	},
	ui = {
		colors = {
			normal_bg = "#022746",
		},
	},
})
