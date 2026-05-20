fx_version 'cerulean'
games { 'gta5' }

/*
description 'NSRP XP Rank System'

author 'Dawnstar Entertainment - Revamp by Toasty'

version '2.0'
*/

client_scripts {
  'hud_c.lua',
}

server_scripts {
  'hud_s.lua',
}

ui_page 'ui/hud.html'

files {
  'ui/hud.html',
  'ui/hud.js',
  'ui/hud.css'
}

export 'updateAOP'
export 'updatePostal'
export 'updateFuel'
export 'updateVehInfo'
export 'showVehHud'
export 'updateCops'
export 'updateEMS'
