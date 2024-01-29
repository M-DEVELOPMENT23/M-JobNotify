fx_version 'cerulean'
game 'gta5'
lua54 'true'
author 'MANU - MANU5895'
description 'Manu-JobNotification'
version '1.0'
client_scripts {
    'client/*.lua',
    'shared/*.lua',
}

shared_scripts {
    'shared/*.lua',
    '@ox_lib/init.lua',

}

server_scripts {
    '@oxmysql/lib/MySQL.lua',
    'server/*.lua'
}

ui_page 'html/index.html'

files {
    'html/index.html',
    'html/style.css',
    'html/index.js',
    'html/*.jpg',
}
