require('trim').setup({
    -- if you want to ignore markdown file.
    -- you can specify filetypes.
    ft_blocklist = {"markdown"},

    -- if you want to enable/disable trim on write
    trim_on_write = true,

    -- highlight trailing spaces
    highlight = false
})
