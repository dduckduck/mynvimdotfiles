return {
    'nvim-telescope/telescope.nvim', 
    tag = '0.1.8',  -- o usa branch = '0.1.x'
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function()
        require('telescope').setup {
            defaults = {
                -- Ajusta aquí la estrategia de diseño
                layout_strategy = 'horizontal',  -- Puedes cambiar a 'vertical' o 'flex'
                layout_config = {
                    horizontal = {
                        preview_width = 0.6,  -- Ajusta el ancho de la vista previa
                    },
                    vertical = {
                        preview_height = 0.4,  -- Ajusta la altura de la vista previa
                    },
                },
                -- Puedes agregar otras configuraciones aquí
            },
            -- Puedes configurar más extensiones de Telescope aquí
        }
    end,
}

