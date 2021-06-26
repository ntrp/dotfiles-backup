vim.g.dashboard_custom_header = {
    '███╗   ██╗██╗   ██╗ ██████╗ ██████╗ ██████╗ ███████╗',
    '████╗  ██║██║   ██║██╔════╝██╔═══██╗██╔══██╗██╔════╝',
    '██╔██╗ ██║██║   ██║██║     ██║   ██║██║  ██║█████╗',
    '██║╚██╗██║╚██╗ ██╔╝██║     ██║   ██║██║  ██║██╔══╝',
    '██║ ╚████║ ╚████╔╝ ╚██████╗╚██████╔╝██████╔╝███████╗',
    '╚═╝  ╚═══╝  ╚═══╝   ╚═════╝ ╚═════╝ ╚═════╝ ╚══════╝'
}
-- vim.g.dashboard_custom_header = {
--
-- '      _..._                                                                           ',
-- '    .\'     `.   ██      ██    ██ ███    ██  █████  ██████  ██    ██ ██ ███    ███ ',
-- '   :         :  ██      ██    ██ ████   ██ ██   ██ ██   ██ ██    ██ ██ ████  ████ ',
-- '   :         :  ██      ██    ██ ██ ██  ██ ███████ ██████  ██    ██ ██ ██ ████ ██ ',
-- '   `.       .\'  ██      ██    ██ ██  ██ ██ ██   ██ ██   ██  ██  ██  ██ ██  ██  ██ ',
-- '     `-...-\'    ███████  ██████  ██   ████ ██   ██ ██   ██   ████   ██ ██      ██ ',
--
-- }

-- vim.g.dashboard_custom_header = {}
-- local file, err = io.open('/home/ntrp/.config/nvim/sunjon.cat', "r")
-- if file == nil then
--     print("Couldn't open file: " .. err)
-- else
--     for line in file:lines() do table.insert(vim.g.dashboard_custom_header, line); end
-- end

vim.g.dashboard_default_executive = 'telescope'

vim.g.dashboard_custom_section = {
    a = {description = {'  Find File          '}, command = 'Telescope find_files'},
    b = {description = {'  Recently Used Files'}, command = 'Telescope oldfiles'},
    c = {description = {'  Find Word          '}, command = 'Telescope live_grep'},
    d = {description = {'  Marks              '}, command = 'Telescope marks'},
    e = {description = {'  Load Last Session  '}, command = 'SessionLoad'},
    f = {description = {'  Settings           '}, command = ':e ' .. CONFIG_PATH .. '/lv-settings.lua'}
}

-- file_browser = {description = {' File Browser'}, command = 'Telescope find_files'},

-- vim.g.dashboard_custom_shortcut = {
--     a = 'f',
--     find_word = 'SPC f a',
--     last_session = 'SPC s l',
--     new_file = 'SPC c n',
--     book_marks = 'SPC f b'
-- }
-- find_history = 'SPC f h',

-- vim.g.dashboard_session_directory = CACHE_PATH..'/session'
-- vim.g.dashboard_custom_footer = O.dashboard.footer

vim.g.dashboard_preview_command = 'cat'
vim.g.dashboard_preview_file = '/home/ntrp/.config/nvim/sunjon.cat'
vim.g.dashboard_preview_file_height = 10
vim.g.dashboard_preview_file_width = 400
