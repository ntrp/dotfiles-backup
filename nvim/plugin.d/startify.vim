" Start Screen with shortcuts
" https://vimawesome.com/plugin/vim-startify

Plug 'mhinz/vim-startify'

let g:startify_custom_header = [
        \ '        _   ___    ________          __',
        \ '       / | / / |  / / ____/___  ____/ /__',
        \ '      /  |/ /| | / / /   / __ \/ __  / _ \',
        \ '     / /|  / | |/ / /___/ /_/ / /_/ /  __/',
        \ '    /_/ |_/  |___/\____/\____/\__,_/\___/',
        \]

let g:startify_session_dir = '~/.config/nvim/session'


let g:startify_lists = [
          \ { 'type': 'files',     'header': ['   Files']                        },
          \ { 'type': 'dir',       'header': ['   Current Directory '. getcwd()] },
          \ { 'type': 'sessions',  'header': ['   Sessions']                     },
          \ { 'type': 'bookmarks', 'header': ['   Bookmarks']                    },
          \ ]


let g:startify_session_autoload = 1
let g:startify_session_delete_buffers = 1
let g:startify_change_to_vcs_root = 1
let g:startify_fortune_use_unicode = 1
let g:startify_session_persistence = 1

let g:webdevicons_enable_startify = 1

function! StartifyEntryFormat()
        return 'WebDevIconsGetFileTypeSymbol(absolute_path) ." ". entry_path'
    endfunction

let g:startify_bookmarks = [
            \ { 'f': '~/.config/fish/config.fish' },
            \ { 'v': '~/.config/nvim/init.vim' },
            \ { 't': '~/.tmux.conf' },
            \ { 'sw': '~/.config/sway/config' },
            \ { 'swm': '~/.config/sway/config.d/modifiers.conf' },
            \ { 'sws': '~/.config/sway/config.d/shortcuts.conf' },
            \ { 'b': '~/.config/i3status-rs/config.toml' },
            \ { 'm': '~/.config/mako/config' },
            \ { 'dwm': '~/_pws/suckless/dwm/config.h' },
            \ { 'dm': '~/_pws/suckless/dmenu/config.h' },
            \ { 'st': '~/_pws/suckless/st/config.h' },
            \ { 'dwl': '~/_pws/wsuckless/dwl/config.h' },
            \ { 'al': '~/.config/alacritty/alacritty.yml' },
            \ ]

let g:startify_enable_special = 0
