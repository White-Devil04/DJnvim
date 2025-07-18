-- set leader key to space
vim.g.mapleader = " "

local keymap = vim.keymap -- for conciseness

--------------------- General Keymaps -------------------
-- use jk to exit insert mode
keymap.set("i", "jk", "<ESC>", { desc = "Exit insert mode with jk" })

-- clear search highlights
keymap.set("n", "<leader>nh", ":nohl<CR>", { desc = "Clear search highlights" })

-- delete single character without copying into register
-- keymap.set("n", "x", '"_x')

-- increment/decrement numbers
keymap.set("n", "<leader>+", "<C-a>", { desc = "Increment number" }) -- increment
keymap.set("n", "<leader>-", "<C-x>", { desc = "Decrement number" }) -- decrement

-- window management
keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically" }) -- split window vertically
keymap.set("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontally" }) -- split window horizontally
keymap.set("n", "<leader>se", "<C-w>=", { desc = "Make splits equal size" }) -- make split windows equal width & height
keymap.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close current split" }) -- close current split window
keymap.set("n", "<leader>sj", "<C-w>j", { desc = "Go to split below" }) -- go to split below
keymap.set("n", "<leader>sk", "<C-w>k", { desc = "Go to split above" }) -- go to split above
keymap.set("n", "<leader>sl", "<C-w>l", { desc = "Go to split right" }) -- go to split right
keymap.set("n", "<leader>sh", "<C-w>h", { desc = "Go to split left" }) -- go to split left
keymap.set("n", "<leader>so", "<C-w>o", { desc = "Close other splits" }) -- close all other splits

keymap.set("n", "<leader>to", "<cmd>tabnew<CR>", { desc = "Open new tab" }) -- open new tab
keymap.set("n", "<leader>tx", "<cmd>tabclose<CR>", { desc = "Close current tab" }) -- close current tab
keymap.set("n", "<leader>tn", "<cmd>tabn<CR>", { desc = "Go to next tab" }) --  go to next tab
keymap.set("n", "<leader>tp", "<cmd>tabp<CR>", { desc = "Go to previous tab" }) --  go to previous tab
keymap.set("n", "<leader>tf", "<cmd>tabnew<CR>", { desc = "Open current buffer in new tab" }) --  move current buffer to new tab

-- copilot keymaps
keymap.set("n", "<leader>c", "<Cmd>CopilotChat<CR>", { silent = true }) -- open copilot chat
keymap.set("n", "<leader>cc", "<Cmd>CopilotChatCode<CR>", { silent = true }) -- open copilot chat code
keymap.set("n", "<leader>cq", "<Cmd>CopilotChatClose<CR>", { silent = true }) -- close copilot chat
keymap.set("n", "<leader>cm", "<Cmd>CopilotChatModels<CR>", { silent = true }) -- open copilot chat models
keymap.set("n", "<leader>cs", "<Cmd>CopilotSearch<CR>", { silent = true }) -- open copilot search
