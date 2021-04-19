local vim = vim
local g = vim.g

vim.g.dashboard_custom_header = {
"████████╗███████╗ ██████╗" ,
"╚══██╔══╝██╔════╝██╔═══██╗",
"   ██║   █████╗  ██║   ██║",
"   ██║   ██╔══╝  ██║   ██║",
"   ██║   ███████╗╚██████╔╝",
"   ╚═╝   ╚══════╝ ╚═════╝ ",
}

g.dashboard_default_executive ='telescope'
g.dashboard_custom_section = {
    a = {description = {'  Find File          '}, command = 'Telescope find_files'},
    b = {description = {'  Recently Used Files'}, command = 'Telescope oldfiles'},
    c = {description = {'  Load Last Session  '}, command = 'SessionLoad'},
    d = {description = {'  Find Word          '}, command = 'Telescope live_grep'},
}

g.dashboard_custom_footer = {'github.com/TeoDev1611'}
