local cmd = vim.cmd
local vim = vim

cmd('syntax on')
cmd('set relativenumber')
cmd('filetype plugin indent on')
cmd('set clipboard=unnamedplus')
cmd('set nocompatible')
cmd('set fileencoding =utf-8')
cmd('set ruler')
cmd('set showcmd')
cmd('set showmatch')
cmd('set noshowmode')
vim.g.mapleader = ' '
cmd('colorscheme gruvbox')
