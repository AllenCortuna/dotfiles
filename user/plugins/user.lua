return {
  -- You can also add new plugins here as well:
  -- Add plugins, the lazy syntax
  -- "andweeb/presence.nvim",
  -- {
  --   "ray-x/lsp_signature.nvim",
  --   event = "BufRead",
  --   config = function()
  --     require("lsp_signature").setup()
  --   end,
  -- },
  -- 
    { 'rose-pine/neovim', name = 'rose-pine',
    config = function()
      require "user.plugins.rose-pine"
    end,
    },
    {"folke/todo-comments.nvim",
      event = "BufRead",
      dependencies = { "nvim-lua/plenary.nvim" },
      opts = {
      }
    },
}

