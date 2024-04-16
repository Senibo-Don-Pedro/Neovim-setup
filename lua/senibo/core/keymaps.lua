-- set leader key to space
vim.g.mapleader = " "

local keymap = vim.keymap -- for conciseness

---------------------
-- General Keymaps -------------------

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


keymap.set("n", "<M-q>", ":qa!<CR>", { desc = "Force quit" }) -- force quit
keymap.set("n", "<leader>w", ":w!<CR>", { desc = "save file" }) -- save
keymap.set("n", "<leader>q", ":wqa!<CR>", { desc = "save and quit" }) -- save and quit

keymap.set("n", "<leader>to", "<cmd>tabnew<CR>", { desc = "Open new tab" }) -- open new tab
keymap.set("n", "<leader>tx", "<cmd>tabclose<CR>", { desc = "Close current tab" }) -- close current tab
keymap.set("n", "<leader>tn", "<cmd>tabn<CR>", { desc = "Go to next tab" }) --  go to next tab
keymap.set("n", "<leader>tp", "<cmd>tabp<CR>", { desc = "Go to previous tab" }) --  go to previous tab
keymap.set("n", "<leader>tf", "<cmd>tabnew %<CR>", { desc = "Open current buffer in new tab" }) --  move current buffer to new tab

--bufferline
keymap.set("n", "<leader>bp", "<cmd>BufferPrevious<CR>", { desc = "Move to previous buffer" }) 
keymap.set("n", "<leader>bn", "<cmd>BufferNext<CR>", { desc = "Move to next buffer" })
keymap.set("n", "<leader>bi", "<cmd>BufferPin<CR>", { desc = "pin/unpin buffer" })
keymap.set("n", "<leader>bc", "<cmd>BufferClose<CR>", { desc = "Close buffer" })
keymap.set("n", "<leader>br", "<cmd>BufferRestore<CR>", { desc = "Restore buffer" })
