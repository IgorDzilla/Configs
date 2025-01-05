vim.keymap.set("n", "<leader>tt", "<cmd>ToggleTerm<cr>", { desc = "Toggle Terminal" })
vim.keymap.set("n", "<leader>tf", "<cmd>ToggleTerm direction=float<cr>", { desc = "Toggle Floating Terminal" })

-- Map <Esc> to switch from terminal mode to normal mode
vim.keymap.set("t", "<Esc>", [[<C-\><C-n>]], { desc = "Switch to Normal mode in terminal" })

vim.keymap.set(
	"n",
	"<leader>th",
	"<cmd>ToggleTerm size=10 direction=horizontal<cr>",
	{ desc = "Toggle Horizontal Terminal" }
)

vim.keymap.set(
	"n",
	"<leader>tv",
	"<cmd>ToggleTerm size=80 direction=vertical<cr>",
	{ desc = "Toggle Vertical Terminal" }
)
