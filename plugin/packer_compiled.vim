" Automatically generated packer.nvim plugin loader code

if !has('nvim-0.5')
  echohl WarningMsg
  echom "Invalid Neovim version for packer.nvim!"
  echohl None
  finish
endif

packadd packer.nvim

try

lua << END
local package_path_str = "C:\\Users\\Usuario1\\AppData\\Local\\Temp\\nvim\\packer_hererocks\\2.1.0-beta3\\share\\lua\\5.1\\?.lua;C:\\Users\\Usuario1\\AppData\\Local\\Temp\\nvim\\packer_hererocks\\2.1.0-beta3\\share\\lua\\5.1\\?\\init.lua;C:\\Users\\Usuario1\\AppData\\Local\\Temp\\nvim\\packer_hererocks\\2.1.0-beta3\\lib\\luarocks\\rocks-5.1\\?.lua;C:\\Users\\Usuario1\\AppData\\Local\\Temp\\nvim\\packer_hererocks\\2.1.0-beta3\\lib\\luarocks\\rocks-5.1\\?\\init.lua"
local install_cpath_pattern = "C:\\Users\\Usuario1\\AppData\\Local\\Temp\\nvim\\packer_hererocks\\2.1.0-beta3\\lib\\lua\\5.1\\?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s))
  if not success then
    print('Error running ' .. component .. ' for ' .. name)
    error(result)
  end
  return result
end

_G.packer_plugins = {
  ["auto-pairs"] = {
    loaded = true,
    path = "C:\\Users\\Usuario1\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\auto-pairs"
  },
  ["barbar.nvim"] = {
    loaded = true,
    path = "C:\\Users\\Usuario1\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\barbar.nvim"
  },
  ["blamer.nvim"] = {
    loaded = true,
    path = "C:\\Users\\Usuario1\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\blamer.nvim"
  },
  ["coc.nvim"] = {
    loaded = true,
    path = "C:\\Users\\Usuario1\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\coc.nvim"
  },
  gruvbox = {
    loaded = true,
    path = "C:\\Users\\Usuario1\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\gruvbox"
  },
  ["gruvbox-material"] = {
    loaded = true,
    path = "C:\\Users\\Usuario1\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\gruvbox-material"
  },
  ["indent-blankline.nvim"] = {
    loaded = true,
    path = "C:\\Users\\Usuario1\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\indent-blankline.nvim"
  },
  ["indentLine."] = {
    loaded = true,
    path = "C:\\Users\\Usuario1\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\indentLine."
  },
  nerdcommenter = {
    loaded = true,
    path = "C:\\Users\\Usuario1\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\nerdcommenter"
  },
  ["nvim-tree.lua"] = {
    loaded = true,
    path = "C:\\Users\\Usuario1\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\nvim-tree.lua"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "C:\\Users\\Usuario1\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\nvim-web-devicons"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "C:\\Users\\Usuario1\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "C:\\Users\\Usuario1\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\plenary.nvim"
  },
  ["popup.nvim"] = {
    loaded = true,
    path = "C:\\Users\\Usuario1\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\popup.nvim"
  },
  ["rust.vim"] = {
    loaded = true,
    path = "C:\\Users\\Usuario1\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\rust.vim"
  },
  ["telescope.nvim"] = {
    loaded = true,
    path = "C:\\Users\\Usuario1\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\telescope.nvim"
  },
  ["vim-airline"] = {
    loaded = true,
    path = "C:\\Users\\Usuario1\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\vim-airline"
  },
  ["vim-airline-themes"] = {
    loaded = true,
    path = "C:\\Users\\Usuario1\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\vim-airline-themes"
  },
  ["vim-floaterm"] = {
    loaded = true,
    path = "C:\\Users\\Usuario1\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\vim-floaterm"
  },
  ["vim-fugitive"] = {
    loaded = true,
    path = "C:\\Users\\Usuario1\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\vim-fugitive"
  },
  ["vim-go"] = {
    loaded = true,
    path = "C:\\Users\\Usuario1\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\vim-go"
  },
  ["vim-polyglot"] = {
    loaded = true,
    path = "C:\\Users\\Usuario1\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\vim-polyglot"
  },
  ["vim-pythonsense"] = {
    loaded = true,
    path = "C:\\Users\\Usuario1\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\vim-pythonsense"
  },
  ["vim-visual-multi"] = {
    loaded = true,
    path = "C:\\Users\\Usuario1\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\vim-visual-multi"
  }
}

END

catch
  echohl ErrorMsg
  echom "Error in packer_compiled: " .. v:exception
  echom "Please check your config for correctness"
  echohl None
endtry
