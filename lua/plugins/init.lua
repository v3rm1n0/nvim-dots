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
    opts = {
      preview = {
        hybrid_modes = { "i" },
      },
    },
  },

  {
    "lervag/vimtex",
    lazy = false, -- uncomment to pin to a specific release
    init = function()
    -- VimTeX configuration goes here, e.g.
    vim.g.vimtex_view_method = "zathura"
    vim.g.vimtex_view_forward_search_on_start = false
			vim.g.vimtex_compiler_latexmk = {
			aux_dir = "/home/v3rm1n/.texfiles/",
			out_dir = "/home/v3rm1n/.texfiles/",
		}
    end
  },

  {
    "3rd/image.nvim",
    lazy = false;
    build = false,
    opts = {
      processor = "magick_cli",
    }
  },

  {
    "nvim-neorg/neorg",
    lazy = false,
    version = "*",
    config = function()
      require "configs.neorg"
    end,
  },
}
