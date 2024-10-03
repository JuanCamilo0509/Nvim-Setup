vim.g.mapleader = ' '
vim.g.maplocalleader = ' '
local g = vim.g
local o = vim.o
--Basics
o.number = true
o.foldmethod = 'indent'
o.ignorecase = true
o.numberwidth = 5
o.relativenumber = true
o.wrap = true
o.tabstop = 4
o.shiftwidth = 4
o.clipboard = 'unnamedplus'
o.swapfile = false
vim.opt.conceallevel = 2
vim.opt.spell = true
vim.opt.spelllang = { "en_us" }
g.mapleader = ' '
vim.cmd([[
syntax on
set noshowmode
set mouse-=a
]])
