return {
  {
    "stevearc/conform.nvim",
    -- event = 'BufWritePre', -- uncomment for format on save
    opts = require "configs.conform",
  },

  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },

  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "vim", "lua", "vimdoc",
        "html", "css"
      },
    },
  },

  {
    'vyfor/cord.nvim',
    build = ':Cord update',
    event = 'VeryLazy',
  },

  {
    "OXY2DEV/markview.nvim",
    lazy = false,
    priority = 49,
  },

}
