-- https://www.youtube.com/watch?v=KYDG3AHgYEs&t=479s
-- https://github.com/hendrikmi/neovim-kickstart-config/tree/main

require("core.options")
require("core.keymaps")

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
	local lazyrepo = "https://github.com/folke/lazy.nvim.git"
	local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
	if vim.v.shell_error ~= 0 then
		error("Error cloning lazy.nvim:\n" .. out)
	end
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
	require("plugins.colortheme"),
	require("plugins.neotree"),
	require("plugins.bufferline"),
	require("plugins.lualine"),
	require("plugins.treesitter"),
	require("plugins.telescope"),
	require("plugins.hop"),
	require("plugins.lsp"),
	require("plugins.autocompletion"),
	require("plugins.autoformatting"),
	require("plugins.gitsigns"),
	require("plugins.indent-blankline"),
	require("plugins.misc"),
	require("plugins.comment"),
	require("plugins.mason"),
})

-------------------------------------------------------------------------------------

-- Initialize the transparent background toggle
local transparent_bg = false

function ToggleTransparentBg()
	if transparent_bg then
		-- Set background back to your theme's default color
		vim.cmd([[
      hi Normal guibg=#1e222a ctermbg=NONE
      hi NormalNC guibg=#1e222a ctermbg=NONE
    ]])
		-- Replace #1e222a with your theme's default background color
		transparent_bg = false
	else
		-- Set background to transparent
		vim.cmd([[
      hi Normal guibg=NONE ctermbg=NONE
      hi NormalNC guibg=NONE ctermbg=NONE
    ]])
		transparent_bg = true
	end
end

-- Map <leader>bg to toggle the background
vim.api.nvim_set_keymap("n", "<leader>bg", ":lua ToggleTransparentBg()<CR>", { noremap = true, silent = true })

-------------------------------------------------------------------------------------

-- Make NeoTree background transparent
vim.cmd([[
  hi NeoTreeNormal guibg=NONE ctermbg=NONE
  hi NeoTreeNormalNC guibg=NONE ctermbg=NONE
  hi NeoTreeTabNormal guibg=NONE ctermbg=NONE
  hi NeoTreeTabActive guibg=NONE ctermbg=NONE
  hi NeoTreeTabInactive guibg=NONE ctermbg=NONE
]])
