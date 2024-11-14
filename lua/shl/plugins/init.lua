return {
  'tpope/vim-sleuth', -- Detect tabstop and shiftwidth automatically

  -- LSP Plugins
  {
    -- `lazydev` configures Lua LSP for your Neovim config, runtime and plugins
    -- used for completion, annotations and signatures of Neovim apis
    'folke/lazydev.nvim',
    ft = 'lua',
    opts = {
      library = {
        -- Load luvit types when the `vim.uv` word is found
        { path = 'luvit-meta/library', words = { 'vim%.uv' } },
      },
    },
  },
  { 'Bilal2453/luvit-meta', lazy = true },
  -- {
  --   'sainnhe/gruvbox-material',
  --   priority = 1000, -- Make sure to load this before all the other start plugins.
  --   init = function()
  --     vim.g.gruvbox_material_enable_italic = true
  --     vim.g.gruvbox_material_enable_bold = true
  --
  --     vim.g.gruvbox_material_better_performance = 1
  --
  --     vim.cmd.colorscheme 'gruvbox-material'
  --   end,
  -- },

  {
    'shaunsingh/nord.nvim',
    priority = 1000,
    init = function()
      vim.g.nord_contrast = true
      vim.g.nord_borders = false
      vim.g.nord_disable_background = false
      vim.g.nord_italic = true
      vim.g.nord_bold = true

      require('nord').set()
    end,
  },

  -- Highlight todo, notes, etc in comments
  { 'folke/todo-comments.nvim', event = 'VimEnter', dependencies = { 'nvim-lua/plenary.nvim' }, opts = { signs = true } },

  {
    'stevearc/oil.nvim',
    ---@module 'oil'
    ---@type oil.SetupOpts
    opts = {},
    dependencies = { 'nvim-tree/nvim-web-devicons' },
  },
}
