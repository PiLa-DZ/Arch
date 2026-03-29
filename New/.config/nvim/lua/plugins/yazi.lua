return {
  "mikavilpas/yazi.nvim",
  version = "*",
  event = "VeryLazy",
  dependencies = {
    { "nvim-lua/plenary.nvim", lazy = true },
  },
  keys = {
    { "<leader>a", "<cmd>Yazi toggle<cr>", desc = "Resume last yazi session" },
  },
  opts = {
    open_for_directories = false,
    keymaps = {
      show_help = "<C-h>",
    },
  },
  init = function()
    vim.g.loaded_netrwPlugin = 1
  end,
}
