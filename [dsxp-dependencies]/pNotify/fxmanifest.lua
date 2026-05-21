fx_version 'adamant'
games {'gta5'}

/*
description 'Simple Notification Script using https://notifyjs.com/'

author 'Nick78111'

version '2.0'
*/

ui_page 'html/index.html'

files {
    'html/index.html',
    'html/pNotify.js',
    'html/noty.js',
    'html/noty.css',
    'html/themes.css',
    'html/sound-example.wav'
}

-- Initiate the clientside lua scripts
client_scripts 'cl_notify.lua'

-- Initiate the serverside lua scripts
server_scripts {
	''
}

-- any client/server exports in your script.
export {
	'SetQueueMax',
	'SendNotification'
}