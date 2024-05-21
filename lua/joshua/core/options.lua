vim.cmd("let g:netrw_liststyle = 3")
vim.cmd("let g:netrw_browse_split = 0")

local opt = vim.opt

opt.mouse          = ""
opt.number         = true
opt.relativenumber = true

-- Tabs & Indentation
opt.tabstop    = 2
opt.shiftwidth = 2
opt.expandtab  = true
opt.autoindent = true

opt.wrap = false

-- Search Settings
opt.ignorecase = true
opt.smartcase  = true

opt.cursorline = true

-- Colorscheme
opt.termguicolors = true
opt.background    = "dark"
opt.signcolumn    = "yes"

-- Backspace
opt.backspace = "indent,eol,start"

-- Clipboard
opt.clipboard:append("unnamedplus")

-- Split Windows
opt.splitright = true
opt.splitbelow = true
