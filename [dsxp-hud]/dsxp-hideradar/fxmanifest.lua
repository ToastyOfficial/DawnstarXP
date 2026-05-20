fx_version 'adamant'
games {'gta5'}

/*
description 'Activates the Radar while driving'

author 'Dawnstar Entertainment - Revamp by Toasty'

version '2.0'
*/

-- Initiate the clientside lua scripts
client_scripts {
	'CLIENT/MinimapValues.lua',
	'CLIENT/RadarWhileDriving.lua'
}

-- Initiate the serverside lua scripts
server_script 'SERVER/UpdateCheck.lua'