-- lazy.nvim bootstrap
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git", "clone", "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
  -- TreeSitter
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
  },

  -- Themes
  {
    "folke/tokyonight.nvim",
    lazy = false,      -- load on startup
    priority = 1000,   -- load before other UI plugins
    config = function()
      vim.cmd.colorscheme("tokyonight")  -- default
    end,
  },
  {
    "rose-pine/neovim",
    lazy = true,
    name = "rose-pine",
  },
  {
    "ellisonleao/gruvbox.nvim",
    lazy = true,
  },
  {
    "erikbackman/brightburn.vim",
    lazy = true,
  },

  -- Bufferline for open files
  {
    "akinsho/bufferline.nvim",
    version = "*",
    dependencies = "nvim-tree/nvim-web-devicons",
    config = function()
      require("bufferline").setup{}
    end,
  },

  -- Telescope for fuzzy buffer search
  {
    "nvim-telescope/telescope.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
  },
})
