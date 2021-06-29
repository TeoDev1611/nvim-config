vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function()
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  -- Themes
  use 'morhetz/gruvbox'
  use 'sainnhe/gruvbox-material'
  use 'marko-cerovac/material.nvim'
  --Pairs
  use 'jiangmiao/auto-pairs'
  --Syntax
  use {'nvim-treesitter/nvim-treesitter', run= ":TSUpdate"}
  --Git
  use 'tpope/vim-fugitive'
  --Gitlens
  use 'APZelos/blamer.nvim'
  --Line
  use {'lukas-reineke/indent-blankline.nvim'}
  --Tree
  use {'kyazdani42/nvim-tree.lua', requires = 'kyazdani42/nvim-web-devicons'}
  --Comment
  use 'preservim/nerdcommenter'
  --LangSupport
  use 'rust-lang/rust.vim'
  use {'fatih/vim-go', run =':GoUpdateBinaries' }
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
  --Dashboard
  use 'glepnir/dashboard-nvim'
  --Line
  use {
    'hoob3rt/lualine.nvim',
    requires = {'kyazdani42/nvim-web-devicons', opt = true}
  }
  --TopBar
  use 'romgrk/barbar.nvim'
  use 'kien/rainbow_parentheses.vim'
  -- JumpMotion
  use 'zsugabubus/vim-jumpmotion'
  -- Complete
  use {'neoclide/coc.nvim', branch = 'release'}
  use 'elixir-editors/vim-elixir'
  use 'TeoDev1611/deno.vim'
  use 'editorconfig/editorconfig-vim'
  use 'pangloss/vim-javascript'    
  use 'leafgarland/typescript-vim' 
  use 'jparise/vim-graphql'
  use 'NoahTheDuke/vim-just'
end)

