
local function run_commands()
    -- Usa `vim.defer_fn` para asegurarte de que los comandos se ejecuten después de la inicialización
    vim.defer_fn(function()
        -- Ejecuta Neotree y espera un momento
        vim.cmd('Neotree')
        
        -- Espera para cambiar de ventana y ejecutar Telescope
        vim.defer_fn(function()
            -- Cambia al siguiente buffer (ajusta si es necesario)
            vim.cmd('wincmd l') 

            -- Ejecuta Telescope con el layout_strategy especificado
            vim.cmd('Telescope find_files layout_strategy=current_buffer')
        end, 100) -- Espera 100 ms (ajusta si es necesario)
    end, 50) -- Espera 50 ms (ajusta si es necesario)
end

-- Usar `VimEnter` para asegurar que los comandos se ejecuten al iniciar Neovim
vim.api.nvim_create_autocmd('VimEnter', {
    callback = run_commands
})
