vim.g.mapleader = " "

local keymap = vim.keymap

keymap.set("i", "jk", "<ESC>", { desc = "Exit inset mode with jk" })
keymap.set("n", "<leader>nh", ":nohl<CR>", { desc = "Clear search highlights" })

keymap.set("n", "<leader>+", "<C-a>", { desc = "Increment number" })
keymap.set("n", "<leader>-", "<C-x>", { desc = "Decrement number" })

keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically" })
keymap.set("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontally" })
keymap.set("n", "<leader>se", "<C-w>=", { desc = "Make splits equal size" })
keymap.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close current split" })

keymap.set("n", "<leader>to", "<cmd>tabnew<CR>", { desc = "Open new tab" })
keymap.set("n", "<leader>tx", "<cmd>tabclose<CR>", { desc = "Close current tab" })
keymap.set("n", "<leader>tn", "<cmd>tabn<CR>", { desc = "Go to next tab" })
keymap.set("n", "<leader>tp", "<cmd>tabp<CR>", { desc = "Go to previous tab" })
keymap.set("n", "<leader>tf", "<cmd>tabnew %<CR>", { desc = "Open current buffer in new tab" })

keymap.set("n", "<tab>", "<cmd>bn<cr>", { desc = "Next buffer" })
keymap.set("n", "<s-tab>", "<cmd>bp<cr>", { desc = "Previous buffer" })
keymap.set("n", "<bs>", "<cmd>bd<cr>", { desc = "Close buffer" })

keymap.set("n", ",", function()
  return vim.v.count == 0
      and "<Plug>(comment_toggle_linewise_current)"
      or "<Plug>(comment_toggle_linewise_count)"
end, { expr = true })
keymap.set('x', ',', '<Plug>(comment_toggle_linewise_visual)')

keymap.set('n', '<f1>', '<cmd>lua vim.lsp.buf.hover()<cr>', { desc = "Show hover" })
keymap.set('n', '<f2>', '<cmd>lua vim.lsp.buf.definition()<cr>', { desc = "Jump to definition" })
