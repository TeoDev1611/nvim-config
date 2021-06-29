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
  local time
  local profile_info
  local should_profile = false
  if should_profile then
    local hrtime = vim.loop.hrtime
    profile_info = {}
    time = function(chunk, start)
      if start then
        profile_info[chunk] = hrtime()
      else
        profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
      end
    end
  else
    time = function(chunk, start) end
  end
  
local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end

  _G._packer = _G._packer or {}
  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "C:\\Users\\Usuario1\\AppData\\Local\\Temp\\nvim\\packer_hererocks\\2.1.0-beta3\\share\\lua\\5.1\\?.lua;C:\\Users\\Usuario1\\AppData\\Local\\Temp\\nvim\\packer_hererocks\\2.1.0-beta3\\share\\lua\\5.1\\?\\init.lua;C:\\Users\\Usuario1\\AppData\\Local\\Temp\\nvim\\packer_hererocks\\2.1.0-beta3\\lib\\luarocks\\rocks-5.1\\?.lua;C:\\Users\\Usuario1\\AppData\\Local\\Temp\\nvim\\packer_hererocks\\2.1.0-beta3\\lib\\luarocks\\rocks-5.1\\?\\init.lua"
local install_cpath_pattern = "C:\\Users\\Usuario1\\AppData\\Local\\Temp\\nvim\\packer_hererocks\\2.1.0-beta3\\lib\\lua\\5.1\\?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s))
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
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
  ["dashboard-nvim"] = {
    loaded = true,
    path = "C:\\Users\\Usuario1\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\dashboard-nvim"
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
  ["lualine.nvim"] = {
    loaded = true,
    path = "C:\\Users\\Usuario1\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\lualine.nvim"
  },
  ["material.nvim"] = {
    loaded = true,
    path = "C:\\Users\\Usuario1\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\material.nvim"
  },
  nerdcommenter = {
    loaded = true,
    path = "C:\\Users\\Usuario1\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\nerdcommenter"
  },
  ["nvim-tree.lua"] = {
    loaded = true,
    path = "C:\\Users\\Usuario1\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\nvim-tree.lua"
  },
  ["nvim-treesitter"] = {
    loaded = true,
    path = "C:\\Users\\Usuario1\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\nvim-treesitter"
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
  ["rainbow_parentheses.vim"] = {
    loaded = true,
    path = "C:\\Users\\Usuario1\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\rainbow_parentheses.vim"
  },
  ["rust.vim"] = {
    loaded = true,
    path = "C:\\Users\\Usuario1\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\rust.vim"
  },
  ["telescope.nvim"] = {
    loaded = true,
    path = "C:\\Users\\Usuario1\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\telescope.nvim"
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
  ["vim-jumpmotion"] = {
    loaded = true,
    path = "C:\\Users\\Usuario1\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\vim-jumpmotion"
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

time([[Defining packer_plugins]], false)
if should_profile then save_profiles() end

END

catch
  echohl ErrorMsg
  echom "Error in packer_compiled: " .. v:exception
  echom "Please check your config for correctness"
  echohl None
endtry
