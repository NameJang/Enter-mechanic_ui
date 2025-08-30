
--[[
      ______  _   _  _______  ______   ______
     |  ____|| \ | ||__  ___||   ___| |  _   \
     | |__   |  \| |   | |   |  |__   | |_|  \
     |  __|  |     |   | |   |  ___|  |  __  \
     | |____ | |\  |   | |   | |____  | |  \ \
     |______||_| \_|   |_|   |______| |_|   \_\
 
     Contect :https://discord.gg/P3fYp8MTwg
--]]

fx_version 'adamant'

game 'gta5'

ui_page "html/index.html"

files {
    'html/index.html',
    'html/index.js',
    'html/index.css',
    'html/sweetalert/dist/sweetalert2.all.min.js',
	'html/sweetalert/dist/sweetalert2.min.js',
	'html/sweetalert/dist/sweetalert2.min.css',
    'html/reset.css'
}


client_scripts {
	'config.lua',
   	'core/client.lua',
    'core/function.lua',
}
server_scripts {
	'config.lua',
	'core/server.lua',
}

