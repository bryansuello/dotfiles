-- set leader key
vim.g.mapleader = " "
vim.g.maplocalleader = " "

vim.keymap.set("i", "kj", "<ESC>", { noremap = true, silent = true })

-- disable the spacebar's default behavior in Normal and Visual modes
vim.keymap.set({ "n", "v" }, "<Space>", "<Nop>", { silent = true })

-- for conciseness
local opts = { noremap = true, silent = true }

-- remove highlight
-- vim.api.nvim_set_keymap("n", "<leader>nh", ":nohlsearch<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>nh", ":nohlsearch<CR>", opts)

-- save file with ctrl + s
vim.keymap.set("n", "<C-s>", "<cmd> w <CR>", opts)

-- if you wanna save a file without formatting -- leader + sn
vim.keymap.set("n", "<leader>sn", "<cmd>noautocmd w <CR>", opts)

-- delete single character with 'x' without putting it in your register
vim.keymap.set("n", "x", '"_x', opts)

-- find and center
vim.keymap.set("n", "n", "nzzzv", opts)
vim.keymap.set("n", "n", "Nzzzv", opts)

-- window management
vim.keymap.set("n", "<leader>v", "<C-w>v", opts) -- vertical split
vim.keymap.set("n", "<leader>h", "<C-w>s", opts) -- horizontal split
vim.keymap.set("n", "<leader>se", "<C-w>=", opts) -- make splits equal in size
vim.keymap.set("n", "<leader>xs", ":close<CR>", opts) -- close split

-- navigate between splits
vim.keymap.set("n", "<C-k>", ":wincmd k<CR>", opts)
vim.keymap.set("n", "<C-j>", ":wincmd j<CR>", opts)
vim.keymap.set("n", "<C-h>", ":wincmd h<CR>", opts)
vim.keymap.set("n", "<C-l>", ":wincmd l<CR>", opts)

-- resize with arrows
vim.keymap.set("n", "<Up>", ":resize -2<CR>", opts)
vim.keymap.set("n", "<Down>", ":resize +2<CR>", opts)
vim.keymap.set("n", "<Left>", ":vertical resize -2<CR>", opts)
vim.keymap.set("n", "<Right>", ":vertical resize +2<CR>", opts)

-- Navigate buffers with tab, shift + tab, delete with leader + x, add with leader + b
vim.keymap.set("n", "<Tab>", ":bnext<CR>", opts)
vim.keymap.set("n", "<S-Tab>", ":bprevious<CR>", opts)
vim.keymap.set("n", "<leader>x", ":bdelete!<CR>", opts) -- close buffer
vim.keymap.set("n", "<leader>b", "<cmd> enew <CR>", opts) -- new buffer

-- Tabs
vim.keymap.set("n", "<leader>to", ":tabnew<CR>", opts) -- open new tab
vim.keymap.set("n", "<leader>tx", ":tabclose<CR>", opts) -- close current tab
vim.keymap.set("n", "<leader>tn", ":tabn<CR>", opts) --  go to next tab
vim.keymap.set("n", "<leader>tp", ":tabp<CR>", opts) --  go to previous tab

-- Toggle line wrapping
vim.keymap.set("n", "<leader>lw", "<cmd>set wrap!<CR>", opts)

-- Stay in indent mode when indenting
vim.keymap.set("v", "<", "<gv", opts)
vim.keymap.set("v", ">", ">gv", opts)

-- Keep last yanked when pasting
vim.keymap.set("v", "p", '"_dP', opts)

-- Diagnostic keymaps
vim.keymap.set("n", "[d", vim.diagnostic.goto_prev, { desc = "Go to previous diagnostic message" })
vim.keymap.set("n", "]d", vim.diagnostic.goto_next, { desc = "Go to next diagnostic message" })
vim.keymap.set("n", "<leader>d", vim.diagnostic.open_float, { desc = "Open floating diagnostic message" })
vim.keymap.set("n", "<leader>q", vim.diagnostic.setloclist, { desc = "Open diagnostics list" })
