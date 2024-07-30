fx_version 'adamant'
game 'gta5'
lua54 'yes'

author 'CustomCodex'

---------------
client_scripts { 'client.lua' }
server_scripts { '@oxmysql/lib/MySQL.lua' }
shared_scripts { '@es_extended/imports.lua', 'config.lua', '@ox_lib/init.lua'  }

server_scripts {
    '@oxmysql/lib/MySQL.lua',
    'server.lua'
}