fx_version 'adamant'
games {'gta5'}

/*
description 'NSRP XP Rank System'

author 'Dawnstar Entertainment - Revamp by Toasty'

version '2.0'
*/

files {
	'nsrp-postals.json',
	'version.json'
}

-- Initiate the clientside lua scripts
client_scripts {
	'config.lua',
    'cl.lua'
}

-- Initiate the serverside lua scripts (if sql needed use '@mysql-async/lib/MySQL.lua')
server_script 'sv.lua'

-- any client/server exports in your script.
--export '' <-- uncomment if needed