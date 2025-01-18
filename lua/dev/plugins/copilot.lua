return {
	"github/copilot.vim",
	{
		"CopilotC-Nvim/CopilotChat.nvim",
		dependencies = {
			{ "github/copilot.vim" }, -- or zbirenbaum/copilot.lua
			{ "nvim-lua/plenary.nvim", branch = "master" }, -- for curl, log and async functions
		},
		build = "make tiktoken", -- Only on MacOS or Linux
		opts = {
			-- See Configuration section for options
		},
		-- See Commands section for default commands if you want to lazy load on them
		-- write keybindings here for copilot chat for easy access
		keybindings = {
			{ "n", "<leader>cc", "<cmd>lua require('copilot-chat').toggle()<cr>", { noremap = true, silent = true } },
			{ "n", "<leader>cs", "<cmd>lua require('copilot-chat').send()<cr>", { noremap = true, silent = true } },
			{ "n", "<leader>cr", "<cmd>lua require('copilot-chat').receive()<cr>", { noremap = true, silent = true } },
		},
	},
}
