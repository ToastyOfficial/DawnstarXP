fx_version 'adamant'
games {'gta5'}

/*
description 'NSRP XP Rank System'

author 'Dawnstar Entertainment - Revamp by Toasty'

version '2.0'
*/

-- Uncomment below line if you are using an html ui element
 ui_page 'ui/index.html'

-- Add the files that need to be used/loaded
-- Typically ui elements here
files {
  'ui/index.html',
  'ui/style.css',
  'ui/img/logo.png',
  'ui/script.js'
}

-- Initiate the clientside lua scripts
client_script 'client.lua'
