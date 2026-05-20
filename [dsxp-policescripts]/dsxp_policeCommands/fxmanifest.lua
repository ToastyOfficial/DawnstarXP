fx_version 'adamant'
games {'gta5'}
author {'Dawnstar Entertainment'}
description {'Commands for Law Enforcement'}

-- Initiate the clientside lua scripts
client_script 'client.lua'

-- Initiate the serverside lua scripts (if sql needed use '@mysql-async/lib/MySQL.lua')
server_script 'server.lua'

-- any client/server exports in your script.
export 'returnIsClientCuffed'