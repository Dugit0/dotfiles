-- Colorscheme
vim.opt.termguicolors = true
vim.opt.background = 'dark'

-- gruvbox-material settings
-- vim.g.gruvbox_material_background = 'hard'   -- soft, medium, hard
-- vim.g.gruvbox_material_foreground = 'mix'    -- original, mix, material

-- edge settings
-- vim.g.edge_style = 'default'
-- vim.g.edge_style = 'aura'
-- vim.g.edge_style = 'neon'
-- vim.g.edge_transparent_background = 1

vim.cmd.colorscheme("gruvbox")


-- Indent Settings
vim.opt.expandtab = true
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.smartindent = true

-- View
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.wrap = true
vim.opt.linebreak = true

-- Clipboard
vim.opt.clipboard = "unnamedplus"

-- Mouse
vim.opt.mouse = "a"
vim.opt.mousefocus = true

-- Column
vim.opt.colorcolumn = "80"

-- Russian layaout
vim.opt.keymap = "russian-jcukenwin"
vim.opt.iminsert = 0
vim.opt.imsearch = 0
-- vim.cmd("highlight Cursor guifg=NONE guibg=Green")
-- vim.cmd("highlight lCursor guifg=NONE guibg=Cyan")







-- Old config
-- vim.wo.number = true
-- vim.wo.relativenumber = true

-- vim.g.did_load_filetypes = 1
-- vim.g.formatoptions = "qrn1"
-- vim.opt.showmode = false
-- vim.opt.updatetime = 100
-- vim.wo.signcolumn = "yes"
-- vim.opt.scrolloff = 8
-- vim.opt.virtualedit = "block"
-- vim.opt.undofile = true
-- vim.opt.shell = "/bin/bash"


-- Splits
-- vim.opt.splitbelow = true
-- vim.opt.splitright = true

-- Shorter messages
-- vim.opt.shortmess:append("c")

-- -- Fillchars
-- vim.opt.fillchars = {
--     vert = "│",
--     fold = "⠀",
--     eob = " ", -- suppress ~ at EndOfBuffer
--     -- diff = "⣿", -- alternatives = ⣿ ░ ─ ╱
--     msgsep = "‾",
--     foldopen = "▾",
--     foldsep = "│",
--     foldclose = "▸"
-- }

-- vim.cmd([[highlight clear LineNr]])
-- vim.cmd([[highlight clear SignColumn]])



