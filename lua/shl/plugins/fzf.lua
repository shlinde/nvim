return {
  "ibhagwan/fzf-lua",
  -- optional for icon support
  dependencies = { "nvim-tree/nvim-web-devicons" },
  -- or if using mini.icons/mini.nvim
  -- dependencies = { "echasnovski/mini.icons" },
  config = function()
    require("fzf-lua").setup {}

    vim.keymap.set("n", "<leader>ff", "<cmd>FzfLua files<cr>", { desc = "Find Files" })
    vim.keymap.set("n", "<leader>fg", "<cmd>FzfLua live_grep<cr>", { desc = "Live Grep" })
    vim.keymap.set("n", "<leader>fh", "<cmd>FzfLua helptags<cr>", { desc = "Help Tags" })
    vim.keymap.set("n", "<leader>tc", "<cmd>FzfLua colorschemes<cr>", { desc = "Colorschemes" })
  end,
}
