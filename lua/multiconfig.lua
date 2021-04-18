local cmd = vim.cmd
local g = vim.g

cmd("command! -nargs=0 Prettier :call CocAction('runCommand', 'prettier.formatFile')")

g.blamer_enabled = 1
g.multi_cursor_use_default_mapping=1
cmd("nnoremap <leader>t :FloatermToggle<CR>")
