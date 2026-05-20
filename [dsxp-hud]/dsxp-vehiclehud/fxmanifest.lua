fx_version 'adamant'
games {'gta5'}

/*
description 'NSRP XP Rank System'

author 'Dawnstar Entertainment - Revamp by Toasty'

version '2.0'
*/

-- Initiate the clientside lua scripts
client_script 'SimpleCarHUD_cl.lua'

-- Initiate the serverside lua scripts (if sql needed use '@mysql-async/lib/MySQL.lua')
server_script 'server.lua'