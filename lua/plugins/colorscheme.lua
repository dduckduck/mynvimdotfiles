return {
  "navarasu/onedark.nvim",
  lazy = false, -- Asegúrate de cargar esto durante el inicio si es tu esquema de colores principal
  priority = 1000, -- Asegúrate de cargar esto antes que todos los demás plugins de inicio
  config = function()
    -- Cargar el esquema de colores aquí
    vim.cmd([[colorscheme onedark]])

    -- Configurar la transparencia
    vim.cmd([[
      highlight Normal guibg=NONE ctermbg=NONE
      highlight NonText guibg=NONE ctermbg=NONE
      highlight LineNr guibg=NONE ctermbg=NONE
      highlight Folded guibg=NONE ctermbg=NONE
      highlight EndOfBuffer guibg=NONE ctermbg=NONE
    ]])
  end,
}

