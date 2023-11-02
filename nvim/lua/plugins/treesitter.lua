require'nvim-treesitter.configs'.setup {
    ensure_installed = { "bash", "c", "cmake", "cpp", "dockerfile", "json", "latex", "lua", "make", "python", "sql", "vim" },
    -- "comment", "gitignore", "passwd", 
    sync_install = false,
    auto_install = true,
    highlight = {
        enable = true,
        disable = { "markdown" },
    },
}
