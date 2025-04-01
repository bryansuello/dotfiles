-- ORIGINAL
-- vim.wo.number = true -- line numbers
-- vim.o.relativenumber = true
--
-- vim.o.clipboard = "unnamedplus" -- sync clipboard between OS and Neovim
--
-- vim.o.wrap = false -- display lines as one long line
-- vim.o.linebreak = true -- don't split words, companion to wrap
--
-- -- vim.o.mouse = 'a' -- enable mouse mode
--
-- vim.o.autoindent = true -- copy indent from current line when starting a new one
--
-- vim.o.ignorecase = true -- case-insensitive search, unless \C or capital is in search
-- vim.o.smartcase = true
--
-- -- indentation
-- vim.o.shiftwidth = 4 -- The number of spaces inserted for each indentation (default: 8)
-- vim.o.tabstop = 4 -- Insert n spaces for a tab (default: 8)
-- vim.o.softtabstop = 4 -- Number of spaces that a tab counts for while performing editing operations (default: 0)
-- vim.o.expandtab = true -- Convert tabs to spaces (default: false)
--
-- vim.o.scrolloff = 4 -- Minimal number of screen lines to keep above and below the cursor (default: 0)
-- vim.o.sidescrolloff = 8 -- Minimal number of screen columns either side of cursor if wrap is `false` (default: 0)
-- vim.o.cursorline = true -- Highlight the current line (default: false)
-- vim.o.splitbelow = true -- Force all horizontal splits to go below current window (default: false)
-- vim.o.splitright = true -- Force all vertical splits to go to the right of current window (default: false)
-- vim.o.hlsearch = false -- Set highlight on search (default: true)
-- vim.o.showmode = true -- We don't need to see things like -- INSERT -- anymore (default: true)
-- vim.opt.termguicolors = true -- Set termguicolors to enable highlight groups (default: false)
-- vim.o.whichwrap = "bs<>[]hl" -- Which "horizontal" keys are allowed to travel to prev/next line (default: 'b,s')
-- vim.o.numberwidth = 4 -- Set number column width to 2 {default 5} (default: 4)
-- vim.o.swapfile = false -- Creates a swapfile (default: true)
-- vim.o.smartindent = true -- Make indenting smarter again (default: false)
-- vim.o.showtabline = 2 -- Always show tabs (default: 1)
-- vim.o.backspace = "indent,eol,start" -- Allow backspace on (default: 'indent,eol,start')
-- vim.o.pumheight = 10 -- Pop up menu height (default: 0)
-- vim.o.conceallevel = 0 -- So that `` is visible in markdown files (default: 1)
-- vim.wo.signcolumn = "yes" -- Keep signcolumn on by default (default: 'auto')
-- vim.o.fileencoding = "utf-8" -- The encoding written to a file (default: 'utf-8')
-- vim.o.cmdheight = 1 -- More space in the Neovim command line for displaying messages (default: 1)
-- vim.o.breakindent = true -- Enable break indent (default: false)
-- vim.o.updatetime = 250 -- Decrease update time (default: 4000)
-- vim.o.timeoutlen = 300 -- Time to wait for a mapped sequence to complete (in milliseconds) (default: 1000)
-- vim.o.backup = false -- Creates a backup file (default: false)
-- vim.o.writebackup = false -- If a file is being edited by another program (or was written to file while editing with another program), it is not allowed to be edited (default: true)
-- vim.o.undofile = true -- Save undo history (default: false)
-- vim.o.completeopt = "menuone,noselect" -- Set completeopt to have a better completion experience (default: 'menu,preview')
-- vim.opt.shortmess:append("c") -- Don't give |ins-completion-menu| messages
-- vim.opt.iskeyword:append("-") -- Hyphenated words recognized by searches (default: does not include '-')
-- vim.opt.formatoptions:remove({ "c", "r", "o" }) -- Don't insert the current comment leader automatically for auto-wrapping comments using 'textwidth', hitting <Enter> in insert mode, or hitting 'o' or 'O' in normal mode. (default: 'croql')
-- vim.opt.runtimepath:remove("/usr/share/vim/vimfiles") -- Separate Vim plugins from Neovim in case Vim still in use (default: includes this path if Vim is installed)

--- LVIM
vim.opt.backup = false -- creates a backup file
vim.opt.clipboard = "unnamedplus" -- allows neovim to access the system clipboard
vim.opt.cmdheight = 1 -- more space in the neovim command line for displaying messages. 2 is  default. setting 0 asks confirmation everytime u save
--vim.opt.colorcolumn = "99999" -- fixes indentline for now
vim.opt.colorcolumn = "80" -- set to 99999 to not display
vim.opt.completeopt = { "menuone", "noselect" }
vim.opt.conceallevel = 0 -- so that `` is visible in markdown files
vim.opt.fileencoding = "utf-8" -- the encoding written to a file
vim.opt.foldmethod = "manual" -- folding set to "expr" for treesitter based folding
vim.opt.foldexpr = "" -- set to "nvim_treesitter#foldexpr()" for treesitter based folding
vim.opt.guifont = "monospace:h17" -- the font used in graphical neovim applications
vim.opt.hidden = true -- required to keep multiple buffers and open multiple buffers
vim.opt.hlsearch = true -- highlight all matches on previous search pattern
vim.opt.ignorecase = true -- ignore case in search patterns
-- vim.opt.mouse = "a"                        -- allow the mouse to be used in neovim
vim.opt.pumheight = 10 -- pop up menu height
vim.opt.showmode = false -- we don't need to see things like -- INSERT -- anymore
vim.opt.showtabline = 2 -- always show tabs
vim.opt.smartcase = true -- smart case
vim.opt.smartindent = true -- make indenting smarter again
vim.opt.splitbelow = true -- force all horizontal splits to go below current window
vim.opt.splitright = true -- force all vertical splits to go to the right of current window
vim.opt.swapfile = false -- creates a swapfile
vim.opt.termguicolors = true -- set term gui colors (most terminals support this)
vim.opt.timeoutlen = 100 -- time to wait for a mapped sequence to complete (in milliseconds)
vim.opt.title = true -- set the title of window to the value of the titlestring
vim.opt.titlestring = "%<%F%=%l/%L - nvim" -- what the title of the window will be set to
vim.opt.undodir = vim.fn.stdpath("cache") .. "/undo"
vim.opt.undofile = true -- enable persistent undo
vim.opt.updatetime = 300 -- faster completion
vim.opt.writebackup = false -- if a file is being edited by another program (or was written to file while editing with another program) it is not allowed to be edited
vim.opt.expandtab = true -- convert tabs to spaces
vim.opt.shiftwidth = 2 -- the number of spaces inserted for each indentation
vim.opt.tabstop = 2 -- insert 2 spaces for a tab
vim.opt.cursorline = true -- highlight the current line
vim.opt.number = true -- set lines numbers
vim.opt.relativenumber = true -- set relative line numbers
vim.opt.numberwidth = 4 -- set number column width to 2 {default 4}
vim.opt.signcolumn = "yes" -- always show the sign column otherwise it would shift the text each time
vim.opt.wrap = true -- display lines as one long line
vim.opt.spell = false
vim.opt.spelllang = "en"
vim.opt.scrolloff = 8 -- is one of my fav
vim.opt.sidescrolloff = 8
