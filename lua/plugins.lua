
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function()
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  -- Themes
  use 'morhetz/gruvbox'
  use 'sainnhe/gruvbox-material'
  --Pairs
  use 'jiangmiao/auto-pairs'
  --Syntax
  use 'sheerun/vim-polyglot'
  --Git
  use 'tpope/vim-fugitive'
  --Gitlens
  use 'APZelos/blamer.nvim'
  --Line
  use {'lukas-reineke/indent-blankline.nvim', requires = 'Yggdroot/indentLine.'}
  --Tree
  use {'kyazdani42/nvim-tree.lua', requires = 'kyazdani42/nvim-web-devicons'}
  --Comment
  use 'preservim/nerdcommenter'
  --LangSupport
  use 'rust-lang/rust.vim'
  use {'fatih/vim-go', run =':GoUpdateBinaries' }
  --Line
  use 'vim-airline/vim-airline'
  use 'vim-airline/vim-airline-themes'
  --IntellijSense
  use {'neoclide/coc.nvim', branch = "release"}
  --Fuzzy Search
  use {
  'nvim-telescope/telescope.nvim',
  requires = {{'nvim-lua/popup.nvim'}, {'nvim-lua/plenary.nvim'}}
}
  --Extra term
  use 'voldikss/vim-floaterm'
  --Cursors
  use {'mg979/vim-visual-multi', branch='master'}
  --Python
  use 'jeetsukumaran/vim-pythonsense' 
  --TopBar
  use 'romgrk/barbar.nvim'
end)
