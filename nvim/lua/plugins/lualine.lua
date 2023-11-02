require('lualine').setup {
    options = {
        theme = 'auto'
    },
    sections = {
        lualine_a = {'mode'},
        lualine_b = {
            'branch', 
            {
                'diagnostics',
                sources = {'nvim_lsp'},
                -- Displays diagnostics for the defined severity types
                sections = { 'error', 'warn', 'info', 'hint' },
                symbols = {error = ' ', warn = ' ', info = ' ', hint = '󰌵 '},
                colored = true,           -- Displays diagnostics status in color if set to true.
                update_in_insert = false, -- Update diagnostics in insert mode.
                always_visible = true,   -- Show diagnostics even if there are none.
            }
        },
        lualine_c = {'filename'},
        lualine_x = {'encoding', 'filetype'},
        lualine_y = {'progress'},
        lualine_z = {'location'}
    }
}
