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
local package_path_str = "/home/ntrp/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/home/ntrp/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/home/ntrp/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/home/ntrp/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/home/ntrp/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
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
  ["FTerm.nvim"] = {
    loaded = false,
    needs_bufread = false,
    path = "/home/ntrp/.local/share/nvim/site/pack/packer/opt/FTerm.nvim"
  },
  ["barbar.nvim"] = {
    loaded = false,
    needs_bufread = false,
    path = "/home/ntrp/.local/share/nvim/site/pack/packer/opt/barbar.nvim"
  },
  ["bracey.vim"] = {
    loaded = false,
    needs_bufread = false,
    path = "/home/ntrp/.local/share/nvim/site/pack/packer/opt/bracey.vim"
  },
  ["codi.vim"] = {
    loaded = false,
    needs_bufread = false,
    path = "/home/ntrp/.local/share/nvim/site/pack/packer/opt/codi.vim"
  },
  ["dashboard-nvim"] = {
    loaded = false,
    needs_bufread = false,
    path = "/home/ntrp/.local/share/nvim/site/pack/packer/opt/dashboard-nvim"
  },
  ["dial.nvim"] = {
    loaded = false,
    needs_bufread = false,
    path = "/home/ntrp/.local/share/nvim/site/pack/packer/opt/dial.nvim"
  },
  ["friendly-snippets"] = {
    loaded = false,
    needs_bufread = false,
    path = "/home/ntrp/.local/share/nvim/site/pack/packer/opt/friendly-snippets"
  },
  ["galaxyline.nvim"] = {
    loaded = false,
    needs_bufread = false,
    path = "/home/ntrp/.local/share/nvim/site/pack/packer/opt/galaxyline.nvim"
  },
  ghcid = {
    loaded = false,
    needs_bufread = false,
    path = "/home/ntrp/.local/share/nvim/site/pack/packer/opt/ghcid"
  },
  ["git-blame.nvim"] = {
    loaded = false,
    needs_bufread = false,
    path = "/home/ntrp/.local/share/nvim/site/pack/packer/opt/git-blame.nvim"
  },
  ["gitsigns.nvim"] = {
    loaded = false,
    needs_bufread = false,
    path = "/home/ntrp/.local/share/nvim/site/pack/packer/opt/gitsigns.nvim"
  },
  ["haskell-vim"] = {
    loaded = false,
    needs_bufread = true,
    path = "/home/ntrp/.local/share/nvim/site/pack/packer/opt/haskell-vim"
  },
  ["hop.nvim"] = {
    loaded = false,
    needs_bufread = false,
    path = "/home/ntrp/.local/share/nvim/site/pack/packer/opt/hop.nvim"
  },
  ["lspsaga.nvim"] = {
    loaded = false,
    needs_bufread = false,
    path = "/home/ntrp/.local/share/nvim/site/pack/packer/opt/lspsaga.nvim"
  },
  ["markdown-preview.nvim"] = {
    loaded = false,
    needs_bufread = false,
    path = "/home/ntrp/.local/share/nvim/site/pack/packer/opt/markdown-preview.nvim"
  },
  ["numb.nvim"] = {
    loaded = false,
    needs_bufread = false,
    path = "/home/ntrp/.local/share/nvim/site/pack/packer/opt/numb.nvim"
  },
  ["nvcode-color-schemes.vim"] = {
    loaded = false,
    needs_bufread = false,
    path = "/home/ntrp/.local/share/nvim/site/pack/packer/opt/nvcode-color-schemes.vim"
  },
  ["nvim-autopairs"] = {
    loaded = false,
    needs_bufread = false,
    path = "/home/ntrp/.local/share/nvim/site/pack/packer/opt/nvim-autopairs"
  },
  ["nvim-bqf"] = {
    loaded = false,
    needs_bufread = true,
    path = "/home/ntrp/.local/share/nvim/site/pack/packer/opt/nvim-bqf"
  },
  ["nvim-colorizer.lua"] = {
    loaded = false,
    needs_bufread = false,
    path = "/home/ntrp/.local/share/nvim/site/pack/packer/opt/nvim-colorizer.lua"
  },
  ["nvim-comment"] = {
    loaded = false,
    needs_bufread = false,
    path = "/home/ntrp/.local/share/nvim/site/pack/packer/opt/nvim-comment"
  },
  ["nvim-compe"] = {
    after_files = { "/home/ntrp/.local/share/nvim/site/pack/packer/opt/nvim-compe/after/plugin/compe.vim" },
    loaded = false,
    needs_bufread = false,
    path = "/home/ntrp/.local/share/nvim/site/pack/packer/opt/nvim-compe"
  },
  ["nvim-dap"] = {
    loaded = false,
    needs_bufread = false,
    path = "/home/ntrp/.local/share/nvim/site/pack/packer/opt/nvim-dap"
  },
  ["nvim-lspconfig"] = {
    loaded = false,
    needs_bufread = false,
    path = "/home/ntrp/.local/share/nvim/site/pack/packer/opt/nvim-lspconfig"
  },
  ["nvim-lspinstall"] = {
    loaded = false,
    needs_bufread = false,
    path = "/home/ntrp/.local/share/nvim/site/pack/packer/opt/nvim-lspinstall"
  },
  ["nvim-spectre"] = {
    loaded = false,
    needs_bufread = false,
    path = "/home/ntrp/.local/share/nvim/site/pack/packer/opt/nvim-spectre"
  },
  ["nvim-tree.lua"] = {
    loaded = false,
    needs_bufread = false,
    path = "/home/ntrp/.local/share/nvim/site/pack/packer/opt/nvim-tree.lua"
  },
  ["nvim-treesitter"] = {
    loaded = true,
    path = "/home/ntrp/.local/share/nvim/site/pack/packer/start/nvim-treesitter"
  },
  ["nvim-ts-autotag"] = {
    loaded = false,
    needs_bufread = false,
    path = "/home/ntrp/.local/share/nvim/site/pack/packer/opt/nvim-ts-autotag"
  },
  ["nvim-ts-context-commentstring"] = {
    loaded = false,
    needs_bufread = false,
    path = "/home/ntrp/.local/share/nvim/site/pack/packer/opt/nvim-ts-context-commentstring"
  },
  ["nvim-web-devicons"] = {
    loaded = false,
    needs_bufread = false,
    path = "/home/ntrp/.local/share/nvim/site/pack/packer/opt/nvim-web-devicons"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/home/ntrp/.local/share/nvim/site/pack/packer/start/packer.nvim"
  },
  playground = {
    loaded = false,
    needs_bufread = true,
    path = "/home/ntrp/.local/share/nvim/site/pack/packer/opt/playground"
  },
  ["plenary.nvim"] = {
    loaded = false,
    needs_bufread = false,
    path = "/home/ntrp/.local/share/nvim/site/pack/packer/opt/plenary.nvim"
  },
  ["popup.nvim"] = {
    loaded = false,
    needs_bufread = false,
    path = "/home/ntrp/.local/share/nvim/site/pack/packer/opt/popup.nvim"
  },
  rnvimr = {
    loaded = true,
    path = "/home/ntrp/.local/share/nvim/site/pack/packer/start/rnvimr"
  },
  ["symbols-outline.nvim"] = {
    loaded = false,
    needs_bufread = false,
    path = "/home/ntrp/.local/share/nvim/site/pack/packer/opt/symbols-outline.nvim"
  },
  ["telescope-fzy-native.nvim"] = {
    loaded = false,
    needs_bufread = false,
    path = "/home/ntrp/.local/share/nvim/site/pack/packer/opt/telescope-fzy-native.nvim"
  },
  ["telescope-project.nvim"] = {
    loaded = false,
    needs_bufread = false,
    path = "/home/ntrp/.local/share/nvim/site/pack/packer/opt/telescope-project.nvim"
  },
  ["telescope.nvim"] = {
    loaded = false,
    needs_bufread = false,
    path = "/home/ntrp/.local/share/nvim/site/pack/packer/opt/telescope.nvim"
  },
  ["trouble.nvim"] = {
    loaded = false,
    needs_bufread = false,
    path = "/home/ntrp/.local/share/nvim/site/pack/packer/opt/trouble.nvim"
  },
  ["vim-matchup"] = {
    after_files = { "/home/ntrp/.local/share/nvim/site/pack/packer/opt/vim-matchup/after/plugin/matchit.vim" },
    loaded = false,
    needs_bufread = true,
    path = "/home/ntrp/.local/share/nvim/site/pack/packer/opt/vim-matchup"
  },
  ["vim-vsnip"] = {
    loaded = false,
    needs_bufread = false,
    path = "/home/ntrp/.local/share/nvim/site/pack/packer/opt/vim-vsnip"
  },
  ["vim-vsnip-integ"] = {
    after_files = { "/home/ntrp/.local/share/nvim/site/pack/packer/opt/vim-vsnip-integ/after/plugin/vsnip_integ.vim" },
    loaded = false,
    needs_bufread = false,
    path = "/home/ntrp/.local/share/nvim/site/pack/packer/opt/vim-vsnip-integ"
  },
  ["which-key.nvim"] = {
    loaded = false,
    needs_bufread = false,
    path = "/home/ntrp/.local/share/nvim/site/pack/packer/opt/which-key.nvim"
  }
}

time([[Defining packer_plugins]], false)
vim.cmd [[augroup packer_load_aucmds]]
vim.cmd [[au!]]
  -- Filetype lazy-loads
time([[Defining lazy-load filetype autocommands]], true)
vim.cmd [[au FileType haskell ++once lua require("packer.load")({'ghcid', 'haskell-vim'}, { ft = "haskell" }, _G.packer_plugins)]]
time([[Defining lazy-load filetype autocommands]], false)
vim.cmd("augroup END")
vim.cmd [[augroup filetypedetect]]
time([[Sourcing ftdetect script at: /home/ntrp/.local/share/nvim/site/pack/packer/opt/haskell-vim/ftdetect/haskell.vim]], true)
vim.cmd [[source /home/ntrp/.local/share/nvim/site/pack/packer/opt/haskell-vim/ftdetect/haskell.vim]]
time([[Sourcing ftdetect script at: /home/ntrp/.local/share/nvim/site/pack/packer/opt/haskell-vim/ftdetect/haskell.vim]], false)
vim.cmd("augroup END")
if should_profile then save_profiles() end

END

catch
  echohl ErrorMsg
  echom "Error in packer_compiled: " .. v:exception
  echom "Please check your config for correctness"
  echohl None
endtry
