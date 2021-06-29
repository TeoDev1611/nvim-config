"---------------------------------VIM CONFIGURATION----------------------------
syntax on
filetype plugin indent on
set encoding=UTF-8
set showtabline=2
set noshowmode
set nocompatible
set mouse=a
set relativenumber
set clipboard=unnamed
set background=dark
set fileencoding=utf-8
set showcmd
set autowrite
set ruler
set showmatch
set sw=2
set conceallevel=0
let mapleader = " "
set laststatus=2
set backspace=2
set guioptions-=T
set guioptions-=L
set nowritebackup
set hidden
set shortmess+=c
set updatetime=300

imap jk <Esc>
imap <C-c> <Esc>l

xnoremap K :move '<-2<CR>gv-gv
xnoremap J :move '>+1<CR>gv-gv 
vnoremap < <gv
vnoremap > >gv

nnoremap <silent> <C-left> :wincmd h<CR>
nnoremap <silent> <C-right> :wincmd l<CR>
nnoremap <silent> <C-up> :wincmd k<CR> 
nnoremap <silent> <C-down> :wincmd j<CR>

call plug#begin()

"Themes
Plug 'morhetz/gruvbox'
Plug 'wojciechkepka/bogster'
Plug 'sainnhe/gruvbox-material'
Plug 'pineapplegiant/spaceduck', { 'branch': 'main' }
Plug 'marko-cerovac/material.nvim'
"Indent Line
Plug 'Yggdroot/indentLine'
"ICONS
Plug 'ryanoasis/vim-devicons'
"COC
Plug 'neoclide/coc.nvim', {'branch': 'release'}
"SYTAXYS 
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}  
"NERD COMMENTER
Plug 'preservim/nerdcommenter' 
"VIM PAIRS
Plug 'jiangmiao/auto-pairs'
" RUST 
Plug 'rust-lang/rust.vim'
"PYTHON SINTAX
Plug 'jeetsukumaran/vim-pythonsense'
"vim go
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
"RAINBOW PARENTHESIS
Plug 'kien/rainbow_parentheses.vim'
"MULTIPLY CURSORS
Plug 'mg979/vim-visual-multi', {'branch': 'master'}
"UTILITIES
Plug 'tpope/vim-fugitive'
"TERMINAL
Plug 'voldikss/vim-floaterm'
"SNIPPETS FILE
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
"TELESCOPE
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
" Vim commits
Plug 'APZelos/blamer.nvim'
"TYPESCRIPT, JAVASCRIPT, GRAPHQL
Plug 'pangloss/vim-javascript'    " JavaScript support
Plug 'leafgarland/typescript-vim' " TypeScript syntax
Plug 'jparise/vim-graphql'        " GraphQL syntax
" Nvim tree lua 
Plug 'kyazdani42/nvim-web-devicons' " for file icons
Plug 'kyazdani42/nvim-tree.lua'
" JUST FILE
Plug 'NoahTheDuke/vim-just'
"Elixir
Plug 'elixir-editors/vim-elixir'
"Lua Line
Plug 'hoob3rt/lualine.nvim'
" Deno
Plug 'TeoDev1611/deno.vim'
"Dashboard
Plug 'glepnir/dashboard-nvim'
" JumpMotion
Plug 'zsugabubus/vim-jumpmotion'
"Editor Config
Plug 'editorconfig/editorconfig-vim'
call plug#end()
"--------------------------------------------SHORTCUTS PLUGINS AND VIM
nnoremap <leader>w :w <CR>
nnoremap <C-w> :q <CR>
nnoremap <leader>q :q <CR>
nnoremap <leader>so :so%<CR>

nnoremap <silent> <TAB> :bnext<CR>
nnoremap <silent> <S-TAB> :bprevious<CR>
nnoremap <leader>bd :bdelete<CR>

"---------------------------------------------THEME CONFIG

if exists('+termguicolors')
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
  set termguicolors
endif

" Gruvbox
let g:gruvbox_material_palette = 'mix'
let g:gruvbox_material_cursor = 'orange'
let g:gruvbox_material_background = 'hard'
let g:gruvbox_contrast_dark = 'hard'

" Material.nvim
let g:material_style = "deep ocean"
let g:material_italic_comments = v:true
let g:material_italic_keywords = v:true
let g:material_italic_functions = v:true

" Ayu config
let ayucolor="dark"

" Set the color scheme 
colorscheme material 

"Colors Coc Settings
autocmd ColorScheme * highlight CocErrorFloat guifg=#ffffff
autocmd ColorScheme * highlight CocInfoFloat guifg=#ffffff
autocmd ColorScheme * highlight CocWarningFloat guifg=#ffffff
autocmd ColorScheme * highlight SignColumn guibg=#adadad

"------------------------------------------------PRETTIER

command! -nargs=0 Prettier :CocCommand prettier.formatFile

"------------------------------------------------VIML CONFIG

let g:markdown_fenced_languages = [
      \ 'vim',
      \ 'help'
      \]

"-------------------------------------------GLOBAL COC EXPLORER EXTENSIONS

let g:coc_global_extensions = [
    \'coc-emmet', 
    \'coc-css', 
    \'coc-html', 
    \'coc-json', 
    \'coc-prettier', 
    \'coc-tsserver', 
    \'coc-pyright', 
    \'coc-emoji',
    \'coc-pairs',
    \ 'coc-deno',
    \]

"-------------------------------------------------RAINBOW PARENTHESIS

let g:rbpt_colorpairs = [
    \ ['brown',       'Gold'],
    \ ['Darkblue',    'Orchid'],
    \ ['darkgray',    'LightSkyBlue'],
    \ ['darkgreen',   'Gold'],
    \ ['darkcyan',    'Orchid'],
    \ ['darkred',     'LightSkyBlue'],
    \ ['darkmagenta', 'Gold'],
    \ ['brown',       'Orchid'],
    \ ['gray',        'LightSkyBlue'],
    \ ['black',       'Gold'],
    \ ['darkmagenta', 'Orchid'],
    \ ['Darkblue',    'LightSkyBlue'],
    \ ['darkgreen',   'Gold'],
    \ ['darkcyan',    'Orchid'],
    \ ['darkred',     'LightSkyBlue'],
    \ ['red',         'Gold'],
    \ ]

let g:rbpt_max = 16

au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces

"-------------------------------------------SHORTCUTS AND CONFIGS

let g:indentLine_char_list = ['|', '¦', '┆', '┊']
let g:multi_cursor_use_default_mapping=1

nnoremap <leader>t :FloatermToggle<CR>

"------------------------------VIM GOLANG

let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_function_calls = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_operators = 1

let g:go_fmt_autosave = 1
let g:go_fmt_command = "goimports"

let g:go_auto_type_info = 1

function! s:build_go_files()
  let l:file = expand('%')
  if l:file =~# '^\f\+_test\.go$'
    call go#test#Test(0, 1)
  elseif l:file =~# '^\f\+\.go$'
    call go#cmd#Build(0)
  endif
endfunction

autocmd FileType go nmap <leader>b :<C-u>call <SID>build_go_files()<CR>
autocmd FileType go nmap <leader>r  <Plug>(go-run)
autocmd FileType go nmap <leader>t  <Plug>(go-test)

"----------------------------------------------------- TELESCOPE

nnoremap <leader>b <cmd>Telescope file_browser<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>
nnoremap <leader>fc <cmd>Telescope git_commits<cr>
nnoremap <leader>fs <cmd>Telescope git_status<cr>

"------------------------------------------------- COC CONFIG

nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
xmap <leader> fs <Plug>(coc-format-selected)
nnoremap <silent>sd :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  elseif (coc#rpc#ready())
    call CocActionAsync('doHover')
  else
    execute '!' . &keywordprg . " " . expand('<cword>')
  endif
endfunction

nmap <leader>F  <Plug>(coc-format-selected)
autocmd CursorHold * silent call CocActionAsync('highlight')

imap <C-l> <Plug>(coc-snippets-expand)
vmap <C-j> <Plug>(coc-snippets-select)
imap <C-j> <Plug>(coc-snippets-expand-jump)

let g:coc_snippet_next = '<c-j>'
let g:coc_snippet_prev = '<c-k>'

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~ '\s'
endfunction

inoremap <silent><expr> <Tab>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<Tab>" :
      \ coc#refresh()

inoremap <silent><expr> <c-space> coc#refresh()

inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

let g:blamer_enabled = 1

"----------------------------------------------------NVIM TREE LUA
let g:nvim_tree_width = 25
let g:nvim_tree_ignore = [ '.git', 'node_modules', '.cache' ] 
let g:nvim_tree_auto_open = 1 
let g:nvim_tree_auto_close = 1 
let g:nvim_tree_auto_ignore_ft = [ 'startify', 'dashboard' ] 
let g:nvim_tree_quit_on_open = 1 
let g:nvim_tree_follow = 1 
let g:nvim_tree_indent_markers = 1 
let g:nvim_tree_git_hl = 1 
let g:nvim_tree_highlight_opened_files = 1 
let g:nvim_tree_root_folder_modifier = ':~' 
let g:nvim_tree_tab_open = 1 
let g:nvim_tree_width_allow_resize  = 1 
let g:nvim_tree_disable_netrw = 1 
let g:nvim_tree_hijack_netrw = 1 
let g:nvim_tree_add_trailing = 1 
let g:nvim_tree_group_empty = 1 
let g:nvim_tree_lsp_diagnostics = 1 
let g:nvim_tree_disable_window_picker = 1 
let g:nvim_tree_window_picker_exclude = {
    \   'filetype': [
    \     'packer',
    \     'qf',
    \	  'plug',
    \   ],
    \   'buftype': [
    \     'terminal'
    \   ]
    \ }
let g:nvim_tree_special_files = [ 'README.md', 'Makefile', 'MAKEFILE', 'Pipenv' ] 
let g:nvim_tree_show_icons = {
    \ 'git': 1,
    \ 'folders': 1,
    \ 'files': 1,
    \ }
let g:nvim_tree_icons = {
    \ 'default': '',
    \ 'symlink': '',
    \ 'git': {
    \   'unstaged': "✗",
    \   'staged': "✓",
    \   'unmerged': "",
    \   'renamed': "➜",
    \   'untracked': "★",
    \   'deleted': "",
    \   'ignored': "◌"
    \   },
    \ 'folder': {
    \   'default': "",
    \   'open': "",
    \   'empty': "",
    \   'empty_open': "",
    \   'symlink': "",
    \   'symlink_open': "",
    \   },
    \   'lsp': {
    \     'hint': "",
    \     'info': "",
    \     'warning': "",
    \     'error': "",
    \   }
    \ }

nnoremap <leader>n :NvimTreeToggle<CR>
nnoremap <leader>r :NvimTreeRefresh<CR>
nnoremap <C-n> :NvimTreeFindFile<CR>

" LUA LINE
lua << EOF
local lua = require("lualine")

lua.setup{
  options = {theme = 'auto'}
}
EOF

" Deno.vim

nnoremap <leader>dc :DenoCache<CR>
nnoremap <leader>df :DenoFmt<CR>
nnoremap <leader>dr :DenoRun<CR>
nnoremap <leader>dd :DenoDoc<CR>

" Dashboard

let g:dashboard_default_executive ='telescope'
let g:dashboard_custom_header = [
      \'████████╗███████╗ ██████╗' ,
      \"╚══██╔══╝██╔════╝██╔═══██╗",
      \"   ██║   █████╗  ██║   ██║",
      \"   ██║   ██╔══╝  ██║   ██║",
      \"   ██║   ███████╗╚██████╔╝",
      \"   ╚═╝   ╚══════╝ ╚═════╝ ",
      \]

let g:indentLine_fileTypeExclude = ['dashboard']
autocmd FileType dashboard set showtabline=0 | autocmd WinLeave <buffer> set showtabline=2

