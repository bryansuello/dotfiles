return {
  {
    "folke/tokyonight.nvim",
    lazy = false, -- don't lazy load the colorscheme
    priority = 1000, -- load it before everything else
    config = function()
      vim.cmd.colorscheme('tokyonight-night') -- Load the theme here
    end
  }
}

