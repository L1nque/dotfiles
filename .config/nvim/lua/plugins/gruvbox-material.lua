return {
  {
    "AstroNvim/astroui",
    ---@type AstroUIOpts
    opts = {
      colorscheme = "gruvbox-material",
    },
  },
  {
    "sainnhe/gruvbox-material",
    init = function()
      -- This runs BEFORE the plugin loads (as per your docs)
      -- This is where we kill the "Cleaned" message and set the look
      vim.g.gruvbox_material_silent_generate = 1
      vim.g.gruvbox_material_background = "hard"
      vim.g.gruvbox_material_foreground = "material"
    end,
  },
}
