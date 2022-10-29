--[[
lvim is the global options object

Linters should be
filled in as strings with either
a global executable or a path to
an executable
]]
-- THESE ARE EXAMPLE CONFIGS FEEL FREE TO CHANGE TO WHATEVER YOU WANT

-- general
lvim.log.level = "warn"
lvim.format_on_save = true
lvim.colorscheme = "nvcode" --or kanagawa, tokyonight
lvim.transparent_window = true
-- to disable icons and use a minimalist setup, uncomment the following
-- lvim.use_icons = false

-- keymappings [view all the defaults by pressing <leader>Lk]
lvim.leader = "space"
-- add your own keymapping
lvim.keys.normal_mode["<C-s>"] = ":w<cr>"
lvim.keys.normal_mode["<S-l>"] = ":BufferLineCycleNext<CR>"
lvim.keys.normal_mode["<S-h>"] = ":BufferLineCyclePrev<CR>"

-- OWN
vim.keymap.set("i", "kj", "<ESC>", { noremap = true, silent = true })
lvim.keys.normal_mode["<A-g>"] = ":Telescope live_grep<CR>"
lvim.keys.normal_mode["<A-f>"] = ":Telescope fd<CR>"
-- vim.keymap.set("n", "<A-1>", ":HopChar1<CR>") -- specified in plugin
-- unmap a default keymapping
-- vim.keymap.del("n", "<C-Up>")
-- override a default keymapping
-- lvim.keys.normal_mode["<C-q>"] = ":q<cr>" -- or vim.keymap.set("n", "<C-q>", ":q<cr>" )

-- Change Telescope navigation to use j and k for navigation and n and p for history in both input and normal mode.
-- we use protected-mode (pcall) just in case the plugin wasn't loaded yet.
-- local _, actions = pcall(require, "telescope.actions")
-- lvim.builtin.telescope.defaults.mappings = {
--   -- for input mode
--   i = {
--     ["<C-j>"] = actions.move_selection_next,
--     ["<C-k>"] = actions.move_selection_previous,
--     ["<C-n>"] = actions.cycle_history_next,
--     ["<C-p>"] = actions.cycle_history_prev,
--   },
--   -- for normal mode
--   n = {
--     ["<C-j>"] = actions.move_selection_next,
--     ["<C-k>"] = actions.move_selection_previous,
--   },
-- }

-- Change theme settings
-- lvim.builtin.theme.options.dim_inactive = true
-- lvim.builtin.theme.options.style = "storm"

-- Use which-key to add extra bindings with the leader-key prefix
-- lvim.builtin.which_key.mappings["P"] = { "<cmd>Telescope projects<CR>", "Projects" }
-- lvim.builtin.which_key.mappings["t"] = {
--   name = "+Trouble",
--   r = { "<cmd>Trouble lsp_references<cr>", "References" },
--   f = { "<cmd>Trouble lsp_definitions<cr>", "Definitions" },
--   d = { "<cmd>Trouble document_diagnostics<cr>", "Diagnostics" },
--   q = { "<cmd>Trouble quickfix<cr>", "QuickFix" },
--   l = { "<cmd>Trouble loclist<cr>", "LocationList" },
--   w = { "<cmd>Trouble workspace_diagnostics<cr>", "Workspace Diagnostics" },
-- }

-- TODO: User Config for predefined plugins
-- After changing plugin config exit and reopen LunarVim, Run :PackerInstall :PackerCompile
lvim.builtin.alpha.active = false
lvim.builtin.alpha.mode = "dashboard"
lvim.builtin.terminal.active = true
lvim.builtin.nvimtree.setup.view.side = "left"
-- lvim.builtin.nvimtree.setup.renderer.icons.show.git = false
lvim.builtin.nvimtree.setup.renderer.icons.show.git = true

-- if you don't want all the parsers change this to a table of the ones you want
lvim.builtin.treesitter.ensure_installed = {
  "bash",
  "c",
  "javascript",
  "json",
  "lua",
  "python",
  "typescript",
  "tsx",
  "css",
  "rust",
  "java",
  "yaml",
}

lvim.builtin.treesitter.ignore_install = { "haskell" }
lvim.builtin.treesitter.highlight.enable = true

-- generic LSP settings

-- -- make sure server will always be installed even if the server is in skipped_servers list
-- lvim.lsp.installer.setup.ensure_installed = {
--     "sumneko_lua",
--     "jsonls",
-- }
-- -- change UI setting of `LspInstallInfo`
-- -- see <https://github.com/williamboman/nvim-lsp-installer#default-configuration>
-- lvim.lsp.installer.setup.ui.check_outdated_servers_on_open = false
-- lvim.lsp.installer.setup.ui.border = "rounded"
-- lvim.lsp.installer.setup.ui.keymaps = {
--     uninstall_server = "d",
--     toggle_server_expand = "o",
-- }

-- ---@usage disable automatic installation of servers
-- lvim.lsp.installer.setup.automatic_installation = false

-- ---configure a server manually. !!Requires `:LvimCacheReset` to take effect!!
-- ---see the full default list `:lua print(vim.inspect(lvim.lsp.automatic_configuration.skipped_servers))`
-- vim.list_extend(lvim.lsp.automatic_configuration.skipped_servers, { "pyright" })
-- local opts = {} -- check the lspconfig documentation for a list of all possible options
-- require("lvim.lsp.manager").setup("pyright", opts)

-- ---remove a server from the skipped list, e.g. eslint, or emmet_ls. !!Requires `:LvimCacheReset` to take effect!!
-- ---`:LvimInfo` lists which server(s) are skipped for the current filetype
-- lvim.lsp.automatic_configuration.skipped_servers = vim.tbl_filter(function(server)
--   return server ~= "emmet_ls"
-- end, lvim.lsp.automatic_configuration.skipped_servers)

-- -- you can set a custom on_attach function that will be used for all the language servers
-- -- See <https://github.com/neovim/nvim-lspconfig#keybindings-and-completion>
-- lvim.lsp.on_attach_callback = function(client, bufnr)
--   local function buf_set_option(...)
--     vim.api.nvim_buf_set_option(bufnr, ...)
--   end
--   --Enable completion triggered by <c-x><c-o>
--   buf_set_option("omnifunc", "v:lua.vim.lsp.omnifunc")
-- end

-- -- set a formatter, this will override the language server formatting capabilities (if it exists)
-- local formatters = require "lvim.lsp.null-ls.formatters"
-- formatters.setup {
--   { command = "black", filetypes = { "python" } },
--   { command = "isort", filetypes = { "python" } },
--   {
--     -- each formatter accepts a list of options identical to https://github.com/jose-elias-alvarez/null-ls.nvim/blob/main/doc/BUILTINS.md#Configuration
--     command = "prettier",
--     ---@usage arguments to pass to the formatter
--     -- these cannot contain whitespaces, options such as `--line-width 80` become either `{'--line-width', '80'}` or `{'--line-width=80'}`
--     extra_args = { "--print-with", "100" },
--     ---@usage specify which filetypes to enable. By default a providers will attach to all the filetypes it supports.
--     filetypes = { "typescript", "typescriptreact" },
--   },
-- }

-- -- set additional linters
local linters = require "lvim.lsp.null-ls.linters"
linters.setup {
  -- { command = "flake8", filetypes = { "python" } },
  -- {
  --   -- each linter accepts a list of options identical to https://github.com/jose-elias-alvarez/null-ls.nvim/blob/main/doc/BUILTINS.md#Configuration
  --   command = "shellcheck",
  --   ---@usage arguments to pass to the formatter
  --   -- these cannot contain whitespaces, options such as `--line-width 80` become either `{'--line-width', '80'}` or `{'--line-width=80'}`
  --   extra_args = { "--severity", "warning" },
  -- },
  {
    command = "codespell",
    ---@usage specify which filetypes to enable. By default a providers will attach to all the filetypes it supports.
    filetypes = { "javascript", "html", "css" },
  },
  {
    command = "tidy",
    filetypes = { "html" },
    extra_args = { "warning" },
  },
}

-- Additional Plugins
lvim.plugins = {
  {
    "folke/trouble.nvim",
    cmd = "TroubleToggle",
  },
  {
    "rmagatti/goto-preview",
    config = function()
      require('goto-preview').setup {
        width = 120; -- Width of the floating window
        height = 25; -- Height of the floating window
        default_mappings = true; -- Bind default mappings
        debug = false; -- Print debug information
        opacity = nil; -- 0-100 opacity level of the floating window where 100 is fully transparent.
        post_open_hook = nil -- A function taking two arguments, a buffer and a window to be ran as a hook.
        -- You can use "default_mappings = true" setup option
        -- Or explicitly set keybindings
        -- vim.cmd("nnoremap gpd <cmd>lua require('goto-preview').goto_preview_definition()<CR>")
        -- gpt - Type Definitions
        -- vim.cmd("nnoremap gpi <cmd>lua require('goto-preview').goto_preview_implementation()<CR>")
        -- vim.cmd("nnoremap gP <cmd>lua require('goto-preview').close_all_win()<CR>")
      }
    end
  },
  -- {
  --   "phaazon/hop.nvim",
  --   branch = "v2", -- optional but strongly recommended
  --   config = function()
  --     -- you can configure Hop the way you like here; see :h hop-config
  --     require("hop").setup({ keys = "etovxqpdygfblzhckisuran" })
  --   end,
  -- },
  {
    "phaazon/hop.nvim",
    event = "BufRead",
    config = function()
      require("hop").setup()
      vim.api.nvim_set_keymap("n", "s", ":HopChar1<cr>", { silent = true })
      vim.api.nvim_set_keymap("n", "S", ":HopWord<cr>", { silent = true })
    end,
  },
  -- {
  --   'wfxr/minimap.vim',
  --   run = "cargo install --locked code-minimap",
  --   -- cmd = {"Minimap", "MinimapClose", "MinimapToggle", "MinimapRefresh", "MinimapUpdateHighlight"},
  --   config = function()
  --     vim.cmd("let g:minimap_width = 10")
  --     vim.cmd("let g:minimap_auto_start = 1")
  --     vim.cmd("let g:minimap_auto_start_win_enter = 1")
  --   end,
  -- },
  {
    "tpope/vim-surround",
    -- make sure to change the value of `timeoutlen` if it's not triggering correctly, see https://github.com/tpope/vim-surround/issues/117
    -- setup = function()
    --  vim.o.timeoutlen = 500
    -- end
  },
  {
    "folke/todo-comments.nvim",
    event = "BufRead",
    config = function()
      require("todo-comments").setup()
    end,
  },
  {
    "aca/emmet-ls",
    config = function()
      local lspconfig = require("lspconfig")
      local configs = require("lspconfig/configs")

      local capabilities = vim.lsp.protocol.make_client_capabilities()
      capabilities.textDocument.completion.completionItem.snippetSupport = true
      capabilities.textDocument.completion.completionItem.resolveSupport = {
        properties = {
          "documentation",
          "detail",
          "additionalTextEdits",
        },
      }

      if not lspconfig.emmet_ls then
        configs.emmet_ls = {
          default_config = {
            cmd = { "emmet-ls", "--stdio" },
            filetypes = {
              "html",
              "css",
              "javascript",
              "typescript",
              "eruby",
              "typescriptreact",
              "javascriptreact",
              "svelte",
              "vue",
            },
            root_dir = function(fname)
              return vim.loop.cwd()
            end,
            settings = {},
          },
        }
      end
      lspconfig.emmet_ls.setup({ capabilities = capabilities })
    end,
  },
  { --autoclose and autorename tag
    "windwp/nvim-ts-autotag",
    config = function()
      require("nvim-ts-autotag").setup({
        autotag = {
          enable = true,
        }
      })
    end,
  },
  ("AndrewRadev/tagalong.vim"), --works auto renaming closing tag, ts-autotag dont
  { "mg979/vim-visual-multi" },
  -- {
  --   "metakirby5/codi.vim",
  --   cmd = "Codi",
  -- },
  {
    "p00f/nvim-ts-rainbow", --rainbow parens
  },
  {
    "norcalli/nvim-colorizer.lua",
    config = function()
      require("colorizer").setup({ "css", "scss", "html", "javascript" }, {
        RGB = true, -- #RGB hex codes
        RRGGBB = true, -- #RRGGBB hex codes
        RRGGBBAA = true, -- #RRGGBBAA hex codes
        rgb_fn = true, -- CSS rgb() and rgba() functions
        hsl_fn = true, -- CSS hsl() and hsla() functions
        css = true, -- Enable all CSS features: rgb_fn, hsl_fn, names, RGB, RRGGBB
        css_fn = true, -- Enable all CSS *functions*: rgb_fn, hsl_fn
      })
    end,
  },
  --tailwindcss colors
  { 'themaxmarchuk/tailwindcss-colors.nvim' },
  -- kanagawa
  -- { 'rebelot/kanagawa.nvim' },
  { 'sindrets/diffview.nvim', requires = 'nvim-lua/plenary.nvim' }, --gitdiff
  {
    'christianchiarulli/nvcode-color-schemes.vim'
  },

  -- Autocommands (https://neovim.io/doc/user/autocmd.html)
  -- vim.api.nvim_create_autocmd("BufEnter", {
  --   pattern = { "*.json", "*.jsonc" },
  --   -- enable wrap mode for json files only
  --   command = "setlocal wrap",
  -- })
  -- vim.api.nvim_create_autocmd("FileType", {
  --   pattern = "zsh",
  --   callback = function()
  --     -- let treesitter use bash highlight for zsh files as well
  --     require("nvim-treesitter.highlight").attach(0, "bash")
  --   end,
  -- })

}


lvim.builtin.treesitter.rainbow.enable = true
--custom
lvim.builtin.lualine.style = "default" -- or "none"
-- lvim.builtin.lualine.options.theme = "gruvbox"


--- ------------------------------------------------------------------------------------------------------
vim.opt.backup = false -- creates a backup file
vim.opt.clipboard = "unnamedplus" -- allows neovim to access the system clipboard
vim.opt.cmdheight = 1 -- more space in the neovim command line for displaying messages. 2 is  default
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
vim.opt.mouse = "a" -- allow the mouse to be used in neovim
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
vim.opt.undodir = vim.fn.stdpath "cache" .. "/undo"
vim.opt.undofile = true -- enable persistent undo
vim.opt.updatetime = 300 -- faster completion
vim.opt.writebackup = false -- if a file is being edited by another program (or was written to file while editing with another program) it is not allowed to be edited
vim.opt.expandtab = true -- convert tabs to spaces
vim.opt.shiftwidth = 2 -- the number of spaces inserted for each indentation
vim.opt.tabstop = 2 -- insert 2 spaces for a tab
vim.opt.cursorline = true -- highlight the current line
vim.opt.number = true -- set numbered lines
vim.opt.relativenumber = true -- set relative numbered lines
vim.opt.numberwidth = 4 -- set number column width to 2 {default 4}
vim.opt.signcolumn = "yes" -- always show the sign column otherwise it would shift the text each time
vim.opt.wrap = true -- display lines as one long line
vim.opt.spell = false
vim.opt.spelllang = "en"
vim.opt.scrolloff = 8 -- is one of my fav
vim.opt.sidescrolloff = 8


--- LUALINE CONFIG
-- See: https://github.com/hoob3rt/lualine.nvim

-- Configuration {{{1

-- Settings {{{2
local lineLengthWarning = 80
local lineLengthError = 120
lvim.builtin.lualine.sections = {
  lualine_a = {}, lualine_b = {}, lualine_c = {},
  lualine_x = {}, lualine_y = {}, lualine_z = {}
}
lvim.builtin.lualine.inactive_sections = {
  lualine_a = {}, lualine_b = {}, lualine_c = {},
  lualine_x = {}, lualine_y = {}, lualine_z = {}
}
-- }}}2

-- Colours, maps and icons {{{2
local colors = {
  bg       = '#0f1117',
  modetext = '#000000',

  giticonbg = '#FF8800',
  gitbg     = '#5C2C2E',
  gittext   = '#C5C5C5',

  diagerror   = '#F44747',
  diagwarning = '#FF8800',
  diaghint    = '#4FC1FF',
  diaginfo    = '#FFCC66',

  lspiconbg = '#68AF00',
  lspbg     = '#304B2E',
  lsptext   = '#C5C5C5',

  typeiconbg       = '#FF8800',
  typebg           = '#5C2C2E',
  typetext         = '#C5C5C5',
  typeiconbgrw     = '#229900',
  typetextmodified = '#FF3300',
  typeiconbgro     = '#000000',
  typetextreadonly = '#000000',

  statsiconbg = '#9CDCFE',
  statsbg     = '#5080A0',
  statstext   = '#000000',

  lineokfg        = '#000000',
  lineokbg        = '#5080A0',
  linelongerrorfg = '#FF0000',
  linelongwarnfg  = '#FFFF00',
  linelongbg      = '#5080A0',

  shortbg   = '#DCDCAA',
  shorttext = '#000000',

  shortrightbg   = '#3F3F3F',
  shortrighttext = '#7C4C4E',

  red     = '#D16969',
  yellow  = '#DCDCAA',
  magenta = '#D16D9E',
  green   = '#608B4E',
  orange  = '#FF8800',
  purple  = '#C586C0',
  blue    = '#569CD6',
  cyan    = '#4EC9B0'
}

local mode_map = {
  ['n']        = { '#569CD6', ' NORMAL ' },
  ['i']        = { '#D16969', ' INSERT ' },
  ['R']        = { '#D16969', 'REPLACE ' },
  ['c']        = { '#608B4E', 'COMMAND ' },
  ['v']        = { '#C586C0', ' VISUAL ' },
  ['V']        = { '#C586C0', ' VIS-LN ' },
  ['']         = { '#C586C0', 'VIS-BLK ' },
  ['s']        = { '#FF8800', ' SELECT ' },
  ['S']        = { '#FF8800', ' SEL-LN ' },
  ['']         = { '#DCDCAA', 'SEL-BLK ' },
  ['t']        = { '#569CD6', 'TERMINAL' },
  ['Rv']       = { '#D16D69', 'VIR-REP ' },
  ['rm']       = { '#FF0000', '- More -' },
  ['r']        = { '#FF0000', "- Hit-Enter -" },
  ['r?']       = { '#FF0000', "- Confirm -" },
  ['cv']       = { '#569CD6', "Vim Ex Mode" },
  ['ce']       = { '#569CD6', "Normal Ex Mode" },
  ['!']        = { '#569CD6', "Shell Running" },
  ['ic']       = { '#DCDCAA', 'Insert mode completion |compl-generic|' },
  ['no']       = { '#DCDCAA', 'Operator-pending' },
  ['nov']      = { '#DCDCAA', 'Operator-pending (forced charwise |o_v|)' },
  ['noV']      = { '#DCDCAA', 'Operator-pending (forced linewise |o_V|)' },
  ['noCTRL-V'] = { '#DCDCAA', 'Operator-pending (forced blockwise |o_CTRL-V|) CTRL-V is one character' },
  ['niI']      = { '#DCDCAA', 'Normal using |i_CTRL-O| in |Insert-mode|' },
  ['niR']      = { '#DCDCAA', 'Normal using |i_CTRL-O| in |Replace-mode|' },
  ['niV']      = { '#DCDCAA', 'Normal using |i_CTRL-O| in |Virtual-Replace-mode|' },
  ['ix']       = { '#DCDCAA', 'Insert mode |i_CTRL-X| completion' },
  ['Rc']       = { '#DCDCAA', 'Replace mode completion |compl-generic|' },
  ['Rx']       = { '#DCDCAA', 'Replace mode |i_CTRL-X| completion' },
}

-- For icons see this cheatsheet and just copy and paste the icons: https://www.nerdfonts.com/cheat-sheet
-- I use the Nerd Font Sauce Code Pro: https://github.com/ryanoasis/nerd-fonts/tree/master/patched-fonts/SourceCodePro
local icons = {
  bracketleft    = '',
  bracketright   = '',
  vim            = '',
  -- vim            = '',
  git            = '',
  -- git            = '',
  github         = '',
  gitlab         = '',
  gitbitbucket   = '',
  hg             = '',
  gitadd         = ' ',
  -- gitadd         = ' ',
  gitmod         = ' ',
  -- gitmod         = '柳',
  gitdel         = ' ',
  -- gitdel         = ' ',
  -- lsp               = '',
  lsp            = '',
  lspdiagerror   = ' ',
  -- lspdiagerror   = ' ',
  lspdiagwarning = ' ',
  -- lspdiagwarning = ' ',
  lspdiaginfo    = ' ',
  -- lspdiaginfo    = ' ',
  lspdiaghint    = ' ',
  -- lspdiaghint    = ' ',
  dos            = '',
  unix           = '',
  -- unix           = '',
  mac            = '',
  typewriteable  = '',
  -- typewriteable  = '',
  -- typewriteable  = '',
  typereadonly   = '',
  typesize       = '',
  -- typesize       = '',
  typeenc        = '',
  stats          = '⅑',
  -- statsvert      = '⇳',
  statsvert      = '⬍',
  -- statshoriz     = '⇔',
  statshoriz     = '⬌',
  statsspace     = '⯀',
  statstab       = '⯈',
}
-- }}}2

-- highlight, Insert and Rag status functions {{{2
local function highlight(group, fg, bg, gui)
  local cmd = string.format('hi! %s guifg=%s guibg=%s', group, fg, bg)
  local cmdInv = string.format('hi! %sInv guifg=%s guibg=%s', group, bg, fg)

  if gui ~= nil then
    cmd = cmd .. ' gui=' .. gui
  end

  vim.cmd(cmd)
  vim.cmd(cmdInv)
end

local function highlightGroup(group, icon, bg, text)
  highlight('Lualine' .. group .. 'Lft', icon, colors.bg)
  highlight('Lualine' .. group .. 'Mid', icon, bg)
  highlight('Lualine' .. group .. 'Txt', text, bg)
  highlight('Lualine' .. group .. 'End', bg, colors.bg)
end

local function ins_left(component)
  table.insert(lvim.builtin.lualine.sections.lualine_c, component)
end

local function ins_right(component)
  table.insert(lvim.builtin.lualine.sections.lualine_x, component)
end

local function setLineWidthColours()
  local colbg = colors.statsbg
  local linebg = colors.statsiconbg

  if (vim.fn.col('.') > lineLengthError)
  then
    colbg = colors.linelongerrorfg
  elseif (vim.fn.col('.') > lineLengthWarning)
  then
    colbg = colors.linelongwarnfg
  end

  if (vim.fn.strwidth(vim.fn.getline('.')) > lineLengthError)
  then
    linebg = colors.linelongerrorfg
  elseif (vim.fn.strwidth(vim.fn.getline('.')) > lineLengthWarning)
  then
    linebg = colors.linelongwarnfg
  end

  highlight('LinePosHighlightStart', colbg, colors.statsbg)
  highlight('LinePosHighlightColNum', colors.statstext, colbg)
  highlight('LinePosHighlightMid', linebg, colbg)
  highlight('LinePosHighlightLenNum', colors.statstext, linebg)
  highlight('LinePosHighlightEnd', linebg, colors.statsbg)
end

local function getGitUrl()
  local cmd = "git ls-remote --get-url 2> /dev/null"
  local file = assert(io.popen(cmd, 'r'))
  local url = file:read('*all')
  file:close()
  return url
  -- return "github"
end

local function getGitIcon()
  local giturl = getGitUrl()

  if giturl == nil then
    return icons['git']
  elseif string.find(giturl, "github") then
    return icons['github']
  elseif string.find(giturl, "bitbucket") then
    return icons['gitbitbucket']
  elseif string.find(giturl, "stash") then
    return icons['gitbitbucket']
  elseif string.find(giturl, "gitlab") then
    return icons['gitlab']
  elseif string.find(giturl, "hg") then
    return icons['hg']
  end

  return icons['git']
end

local conditions = {
  display_mode  = function() return vim.fn.winwidth(0) > 60 end,
  display_pos   = function() return vim.fn.winwidth(0) > 80 end,
  display_stats = function() return vim.fn.winwidth(0) > 100 end,
  display_git   = function()
    if getGitUrl() == nil then
      return false
    end

    return vim.fn.winwidth(0) > 120
  end,
  display_lsp   = function()
    local clients = vim.lsp.get_active_clients()

    if next(clients) == nil then
      return false
    end

    return vim.fn.winwidth(0) > 140
  end,
}
-- }}}2

-- }}}1

-- Left {{{1

-- Vi Mode {{{2
ins_left {
  function()
    highlight('LualineMode', colors.bg, mode_map[vim.fn.mode()][1])
    highlight('LualineModeText', colors.modetext, mode_map[vim.fn.mode()][1])
    return icons['bracketleft']
  end,
  color = 'LualineModeInv',
  cond = conditions.display_mode,
  padding = { left = 1, right = 0 }
}
ins_left {
  function()
    return mode_map[vim.fn.mode()][2]
  end,
  color = 'LualineModeText',
  cond = conditions.display_mode,
  icon = icons['vim'],
  padding = { left = 0, right = 0 }
}
ins_left {
  function()
    return icons['bracketright']
  end,
  color = 'LualineModeInv',
  cond = conditions.display_mode,
  padding = { left = 0, right = 0 }
}
-- }}}2

-- Git info {{{2

-- Git Branch Name {{{3
ins_left {
  function()
    highlightGroup('Git', colors.giticonbg, colors.gitbg, colors.gittext)
    return icons['bracketleft']
  end,
  color = 'LualineGitLft',
  cond = conditions.display_git,
  padding = { left = 1, right = 0 }
}
ins_left {
  function() return getGitIcon() end,
  color = 'LualineGitMidInv',
  cond = conditions.display_git,
  padding = { left = 0, right = 0 }
}
ins_left {
  function() return icons['bracketright'] end,
  color = 'LualineGitMid',
  cond = conditions.display_git,
  padding = { left = 0, right = 0 }
}
ins_left {
  'branch',
  color = 'LualineGitTxt',
  cond = conditions.display_git,
  icon = '',
  padding = { left = 0, right = 0 }
}
-- }}}3

-- Git diffs {{{3
ins_left {
  'diff',
  color = 'LualineGitTxt',
  symbols = { added = icons['gitadd'], modified = icons['gitmod'], removed = icons['gitdel'] },
  diff_color = {
    added = { fg = colors.green, bg = colors.gitbg },
    modified = { fg = colors.orange, bg = colors.gitbg },
    removed = { fg = colors.red, bg = colors.gitbg },
  },
  cond = conditions.display_git,
  icon = '',
  padding = { left = 0, right = 0 }
}
ins_left {
  function() return icons['bracketright'] end,
  color = 'LualineGitEnd',
  cond = conditions.display_git,
  padding = { left = 0, right = 0 }
}
-- }}}3

-- }}}2

-- Lsp Section {{{2

-- Lsp Client {{{3
ins_left {
  function()
    highlightGroup('Lsp', colors.lspiconbg, colors.lspbg, colors.lsptext)
    return icons['bracketleft']
  end,
  color = 'LualineLspLft',
  cond = conditions.display_lsp,
  padding = { left = 1, right = 0 }
}
ins_left {
  function() return icons['lsp'] end,
  color = 'LualineLspMidInv',
  cond = conditions.display_lsp,
  padding = { left = 0, right = 0 }
}
ins_left {
  function() return icons['bracketright'] end,
  color = 'LualineLspMid',
  cond = conditions.display_lsp,
  padding = { left = 0, right = 0 }
}
ins_left {
  function()
    local msg = 'No Active Lsp'
    local buf_ft = vim.api.nvim_buf_get_option(0, 'filetype')
    local clients = vim.lsp.get_active_clients()
    if next(clients) == nil then return msg end
    for _, client in ipairs(clients) do
      local filetypes = client.config.filetypes
      if filetypes and vim.fn.index(filetypes, buf_ft) ~= -1 then
        return client.name
      end
    end
    return msg
  end,
  color = 'LualineLspTxt',
  cond = conditions.display_lsp,
  padding = { left = 1, right = 1 }
}
-- }}}3

-- Diagnostics {{{3
ins_left {
  'diagnostics',
  sources = { "nvim_lsp" },
  symbols = {
    error = icons['lspdiagerror'],
    warn = icons['lspdiagwarning'],
    info = icons['lspdiaginfo'],
    hint = icons['lspdiaghint']
  },
  diagnostics_color = {
    error = { fg = colors.diagerror, bg = colors.lspbg },
    warn = { fg = colors.diagwarning, bg = colors.lspbg },
    info = { fg = colors.diaginfo, bg = colors.lspbg },
    hint = { fg = colors.diaghint, bg = colors.lspbg },
  },
  color = 'LualineLspMid',
  cond = conditions.display_lsp,
  padding = { left = 0, right = 0 }
}
ins_left {
  function() return icons['bracketright'] end,
  color = 'LualineLspEnd',
  cond = conditions.display_lsp,
  padding = { left = 0, right = 0 }
}
-- }}}3

-- }}}2

-- }}}1

-- Right {{{1

-- Type {{{2
ins_right {
  function()
    highlightGroup('Type', colors.typeiconbg, colors.typebg, colors.typetext)
    return icons['bracketleft']
  end,
  color = 'LualineTypeLft',
  cond = conditions.display_stats,
  padding = { left = 0, right = 0 }
}
ins_right {
  function() return icons[vim.bo.fileformat] or '' end,
  color = 'LualineTypeMidInv',
  cond = conditions.display_stats,
  padding = { left = 0, right = 0 }
}
ins_right {
  function() return icons['bracketright'] end,
  color = 'LualineTypeMid',
  cond = conditions.display_stats,
  padding = { left = 0, right = 0 }
}

-- File type icon.
ins_right {
  function()
    local filetype = vim.bo.filetype
    if filetype == '' then return '' end
    local filename, fileext = vim.fn.expand("%:t"), vim.fn.expand("%:e")
    local icon = require 'nvim-web-devicons'.get_icon(filename, fileext, { default = true })
    return string.format('%s', icon)
  end,
  color = 'LualineTypeMid',
  cond = conditions.display_stats,
  padding = { left = 1, right = 0 }
}

-- File name.
ins_right {
  function()
    local filenameColour = colors.typetext
    local isModified = vim.bo.modified
    local isReadonly = vim.bo.readonly or not vim.bo.modifiable

    if isModified
    then
      filenameColour = colors.typetextmodified
    elseif isReadonly then
      filenameColour = colors.typetextreadonly
    end

    highlight('LualineTypeFileName', filenameColour, colors.typebg)
    return '%t'
  end,
  color = 'LualineTypeFileName',
  cond = conditions.display_stats,
  padding = { left = 1, right = 0 }
}

-- Padlock if the file is readonly.
ins_right {
  function()
    local lockcolour = colors.typeiconbgrw
    local lockicon = icons['typewriteable']
    local isReadonly = vim.bo.readonly or not vim.bo.modifiable
    if isReadonly
    then
      lockcolour = colors.typeiconbgro
      lockicon = icons['typereadonly']
    end
    highlight('LualineTypeMidLock', lockcolour, colors.typebg)
    return lockicon
  end,
  color = 'LualineTypeMidLock',
  cond = conditions.display_stats,
  padding = { left = 1, right = 0 }
}
-- File type text.
ins_right {
  function() return vim.bo.filetype end,
  color = 'LualineTypeTxt',
  cond = conditions.display_stats,
  padding = { left = 1, right = 0 }
}

-- File size icon.
ins_right {
  function() return icons['typesize'] end,
  color = 'LualineTypeMid',
  cond = conditions.display_stats,
  padding = { left = 1, right = 0 }
}
-- File size in b, k, m or g.
ins_right {
  function()
    local function format_file_size(file)
      local size = vim.fn.getfsize(file)
      if size <= 0 then return '' end
      local sufixes = { 'b', 'k', 'm', 'g' }
      local i = 1
      while size > 1024 do
        size = size / 1024
        i = i + 1
      end

      if (i == 1)
      then
        return string.format('%.0f%s', size, sufixes[i])
      end

      return string.format('%.1f%s', size, sufixes[i])
    end

    local file = vim.fn.expand('%:p')
    if string.len(file) == 0 then return '' end
    return format_file_size(file)
  end,
  color = 'LualineTypeTxt',
  cond = conditions.display_stats,
  padding = { left = 1, right = 0 }
}
ins_right {
  function() return icons['typeenc'] end,
  color = 'LualineTypeMid',
  cond = conditions.display_stats,
  padding = { left = 1, right = 0 }
}
ins_right {
  'encoding',
  color = 'LualineTypeTxt',
  cond = conditions.display_stats,
  padding = { left = 1, right = 0 }
}
ins_right {
  function() return icons['bracketright'] end,
  color = 'LualineTypeEnd',
  cond = conditions.display_stats,
  padding = { left = 0, right = 0 }
}
-- }}}2

-- Cursor Position/Stats Section {{{2
ins_right {
  function()
    highlightGroup('Stats', colors.statsiconbg, colors.statsbg, colors.statstext)
    return icons['bracketleft']
  end,
  color = 'LualineStatsLft',
  cond = conditions.display_pos,
  padding = { left = 1, right = 0 }
}
ins_right {
  function() return icons['stats'] end,
  color = 'LualineStatsMidInv',
  cond = conditions.display_pos,
  padding = { left = 0, right = 0 }
}
ins_right {
  function() return icons['bracketright'] end,
  color = 'LualineStatsMid',
  cond = conditions.display_pos,
  padding = { left = 0, right = 0 }
}
-- Percentage/Top/Bottom/All
ins_right {
  'progress',
  color = 'LualineStatsTxt',
  cond = conditions.display_pos,
  icon = '',
  padding = { left = 0, right = 0 }
}
-- Vertical icon.
ins_right {
  function() return icons['statsvert'] end,
  color = 'LualineStatsMid',
  cond = conditions.display_pos,
  icon = '',
  padding = { left = 0, right = 0 }
}
-- File line position and number of lines.
ins_right {
  function()
    return string.format("%4s/%4i", "%l", vim.fn.line('$'))
  end,
  color = 'LualineStatsTxt',
  cond = conditions.display_pos,
  icon = '',
  padding = { left = 0, right = 0 }
}
-- Horiz icon.
ins_right {
  function() return icons['statshoriz'] end,
  color = 'LualineStatsMid',
  cond = conditions.display_pos,
  icon = '',
  padding = { left = 0, right = 0 }
}
-- Left bracket for line length.
ins_right {
  function()
    setLineWidthColours()
    return icons['bracketleft']
  end,
  color = 'LinePosHighlightStart',
  cond = conditions.display_pos,
  padding = { left = 1, right = 0 }
}
-- Column and line width
ins_right {
  function()
    return string.format("%4s", "%c")
  end,
  color = 'LinePosHighlightColNum',
  cond = conditions.display_pos,
  icon = '',
  padding = { left = 0, right = 0 }

}
ins_right {
  function()
    return icons['bracketleft']
  end,
  color = 'LinePosHighlightMid',
  cond = conditions.display_pos,
  icon = '',
  padding = { left = 0, right = 0 }
}
ins_right {
  function()
    return string.format("%4i", string.len(vim.fn.getline('.')))
  end,
  color = 'LinePosHighlightLenNum',
  cond = conditions.display_pos,
  icon = '',
  padding = { left = 0, right = 0 }
}
ins_right {
  function()
    return icons['bracketright']
  end,
  color = 'LinePosHighlightEnd',
  cond = conditions.display_pos,
  padding = { left = 0, right = 0 }
}
ins_right {
  function()
    if vim.bo.expandtab
    then
      return icons['statsspace']
    else
      return icons['statstab']
    end
  end,
  color = 'LualineStatsMid',
  cond = conditions.display_pos,
  icon = '',
  padding = { left = 0, right = 0 }
}
ins_right {
  function() return '' .. vim.bo.shiftwidth end,
  color = 'LualineStatsTxt',
  cond = conditions.display_pos,
  icon = '',
  padding = { left = 0, right = 0 }
}
ins_right {
  function() return icons['bracketright'] end,
  color = 'LualineStatsEnd',
  cond = conditions.display_pos,
  padding = { left = 0, right = 1 }
}
-- }}}2

-- }}}1
