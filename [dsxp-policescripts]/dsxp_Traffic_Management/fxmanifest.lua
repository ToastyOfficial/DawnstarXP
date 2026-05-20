fx_version 'adamant'
games {'gta5'}
author 'Dawnstar Entertainment'
description 'Traffic Management System for Law Enforcement'

-- Initiate the clientside lua scripts
client_scripts {
	'core/core.lua',
    'core/menu_client.lua',
    'core/dsmenu.lua'
}

-- Initiate the serverside lua scripts (if sql needed use '@mysql-async/lib/MySQL.lua')
server_script 'core/server.lua'

-- any client/server exports in your script.
--export '' <-- uncomment if needed