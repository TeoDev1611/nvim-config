local vim = vim
local cmd = vim.cmd

--IMAPS
cmd('imap jk <Esc>')
cmd('imap <C-c> <Esc>')
--MOVEMENTS
cmd("xnoremap J :move '>+1<CR>gv-gv")
cmd("xnoremap J :move '>+1<CR>gv-gv ")
cmd("nnoremap <leader>w :w<CR>")
cmd("nnoremap <leader>q :q<CR>")
cmd("nnoremap <leader>so :so%<CR>")
cmd("vnoremap < <gv")
cmd("vnoremap > >gv")
cmd("nnoremap <silent> <A-left> :wincmd h<CR>")
cmd("nnoremap <silent> <A-right> :wincmd l<CR>")
cmd("nnoremap <silent> <A-up> :wincmd k<CR>")
cmd("nnoremap <silent> <A-down> :wincmd j<CR>")
cmd("nnoremap <leader>so :so%<CR>")
cmd("nnoremap <silent> <TAB> :bnext<CR>")
cmd("nnoremap <silent> <S-TAB> :bprevious<CR>")
cmd("nnoremap <leader>bd :bdelete<CR>")
