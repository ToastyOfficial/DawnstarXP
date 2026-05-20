fx_version 'adamant'
games {'gta5'}

/*
description 'NSRP XP Rank System'

author 'Dawnstar Entertainment - Revamp by Toasty'

version '2.0'
*/

-- Notes <-- add your notes

-- Uncomment below line if you are using an html ui element
 ui_page { 'index.html' }

-- Add the fies that need to be used/loaded
-- Typically ui elements here
files {
    'html/index.html',
    'html/moment-with-locales.min.js',
    'html/moment-timezone-with-data-2012-2022.min.js',
    'html/moment-precise-range.js',
    'html/css/style.css'
}

-- Initiate the clientside lua scripts
client_scripts {
	'playerlist.lua',
    'cl_playerlist.lua'
}

-- Initiate the serverside lua scripts (if sql needed use '@mysql-async/lib/MySQL.lua')
server_script 'sv_playerlist.lua'

-- any client/server exports in your script.
export 'getConnectedPlayers'
server_exports {
    'getConnectedPlayers'
}