-- init.lua

-- config: global
vim.g.c_syntax_for_h = true
vim.g.mapleader = " "
vim.g.netrw_banner = false
vim.g.netrw_liststyle = 3
vim.g.netrw_winsize = -30

-- config: option
vim.opt.background = "dark"
vim.opt.backup = false
vim.opt.colorcolumn = "80"
vim.opt.completeopt:append { "menuone", "noselect", "noinsert" }
vim.opt.completeopt:remove { "preview" }
vim.opt.expandtab = true
vim.opt.hlsearch = true
vim.opt.ignorecase = true
vim.opt.incsearch = true
vim.opt.number = true
vim.opt.pumheight = 8
vim.opt.relativenumber = true
vim.opt.shiftwidth = 4
vim.opt.showmode = false
vim.opt.signcolumn = "yes"
vim.opt.smartcase = true
vim.opt.swapfile = false
vim.opt.tabstop = 4
vim.opt.termguicolors = true
vim.opt.undofile = true
vim.opt.wildignore:append { "*.o" }
vim.opt.wildmenu = true
vim.opt.wrap = false
vim.opt.writebackup = true

-- config: command
vim.cmd [[ colorscheme plain-colorscheme ]]

-- keymap: global
vim.keymap.set("n", "<Leader>e",  ":e **/*",                           { noremap = true, silent = false })
vim.keymap.set("n", "<Leader>q",  ":Lexplore<CR>",                     { noremap = true, silent = true  })
vim.keymap.set("n", "<Leader>tc", ":tabnew<CR>",                       { noremap = true, silent = true  })
vim.keymap.set("n", "<Leader>tn", ":tabnext<CR>",                      { noremap = true, silent = true  })
vim.keymap.set("n", "<Leader>tp", ":tabprevious<CR>",                  { noremap = true, silent = true  })
vim.keymap.set("n", "<Leader>f",  ":grep! <cword> **/*<CR>:copen<CR>", { noremap = true, silent = true })

-- keymap: language
vim.keymap.set("i", "<C-Space>",  "<C-x><C-o>",               { noremap = true, silent = true  })
vim.keymap.set("i", "<C-s>",      vim.lsp.buf.signature_help, { noremap = true, silent = true  })
vim.keymap.set("n", "<Leader>D",  vim.lsp.buf.declaration,    { noremap = true, silent = true  })
vim.keymap.set("n", "<Leader>R",  vim.lsp.buf.rename,         { noremap = true, silent = true  })
vim.keymap.set("n", "<Leader>a",  vim.lsp.buf.code_action,    { noremap = true, silent = true  })
vim.keymap.set("n", "<Leader>d",  vim.lsp.buf.definition,     { noremap = true, silent = true  })
vim.keymap.set("n", "<Leader>h",  vim.lsp.buf.hover,          { noremap = true, silent = true  })
vim.keymap.set("n", "<Leader>r",  vim.lsp.buf.references,     { noremap = true, silent = true  })

-- require:
require "plain-colorscheme"
require "plain-language".configure("c")
require "plain-line"
