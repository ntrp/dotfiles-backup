"   /  _/___  (_) /__   __(_)___ ___
"   / // __ \/ / __/ | / / / __ `__ \
" _/ // / / / / /__| |/ / / / / / / /
"/___/_/ /_/_/\__(_)___/_/_/ /_/ /_/

" General Settings
source $HOME/.config/nvim/settings.vim
source $HOME/.config/nvim/functions.vim
source $HOME/.config/nvim/keys/mappings.vim

" Plugin Configuration
" auto-install vim-plug
if empty(glob(stdpath('config') . '/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

" install all plugins
call plug#begin(stdpath('config') . '/autoload/plugged')

" plugins are loaded from the plugin.d directory
for f in split(glob(stdpath('config') . '/plugin.d/*.vim'), '\n')
    exe 'source' f
endfor

call plug#end()

" Automatically install missing plugins on startup
autocmd VimEnter *
  \  if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \|   PlugInstall --sync | q
  \| endif

" Themes
source $HOME/.config/nvim/themes/syntax.vim
source $HOME/.config/nvim/themes/nvcode.vim
source $HOME/.config/nvim/themes/airline.vim

source $HOME/.config/nvim/keys/which-key.vim
luafile $HOME/.config/nvim/lua/plug-colorizer.lua

" Add paths to node and python here
if !empty(glob("~/.config/nvim/paths.vim"))
  source $HOME/.config/nvim/paths.vim
endif
