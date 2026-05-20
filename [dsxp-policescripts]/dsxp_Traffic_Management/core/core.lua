-- permissions


-- vars
local speedZone = nil

local pedLoc = nil
local players = {}

local zones = {}
local blips = {}

-- notifications
function showNotification(message, type, time)
  TriggerEvent("pNotify:SendNotification", {
    text = message,
    type = type,
    timeout = time,
    layout = "centerLeft",
    animation = {
      open = "gta_effects_fade_in",
      close = "gta_effects_fade_out",
    },
  })
end

-- open menu command
 RegisterCommand("traffic", function()
     DSMenu.OpenMenu('menu:main')
 end, false)
-- stop traffic command
RegisterCommand('stopTraffic', function(source)
  --print("TM: Ped Coords: " .. pedLoc)

  print('Command used: stopTraffic')
  TriggerServerEvent('tm:stopTraffic', players, pedLoc)
end, false)
-- slow traffic command
RegisterCommand('slowTraffic', function(source)
  --print("TM: Ped Coords: " .. pedLoc)
  print('Command used: slowTraffic')
  TriggerServerEvent('tm:slowTraffic', players, pedLoc)
end, false)
-- resume traffic command
RegisterCommand('resTraffic', function(source)
  --print("TM: Ped Coords: " .. pedLoc)
  TriggerServerEvent('tm:resTraffic', players)
end, false)


-- when server tells client to add a speed zone
RegisterNetEvent('tm:addZone')
AddEventHandler('tm:addZone', function(coords, speed, blipColor)
  -- make zone with args
  print('Coords ' .. coords)
  print('Speed: ' .. speed)
  print('Color: ' .. blipColor)
  speedZone = AddSpeedZoneForCoord(coords, 50.0, speed, false)

  -- make blip with args
  tcblip = AddBlipForRadius(GetEntityCoords(GetPlayerPed(-1)),40.0)
  SetBlipAlpha(tcblip,80)
  SetBlipColour(tcblip, blipColor)

  table.insert(zones, 1, speedZone)
  print(#zones)
  table.insert(blips, 1, tcblip)
end)

-- when server tells client to remove a speed zone
RegisterNetEvent('tm:remZones')
AddEventHandler('tm:remZones', function()
  print('Client remove event fired')
  --delete all zones on client
  for k, v in pairs(zones) do
    RemoveSpeedZone(zones[k])
    print('Deleted zone: ' .. zones[k])
  end
  zones = {}
  for k, v in pairs(blips) do
    RemoveBlip(blips[k])
    print('Deleted blip: ' .. blips[k])
  end
  blips = {}
end)

CreateThread( function()
  while true do
    Wait(2000)
    local ped = PlayerPedId()
    pedLoc = GetEntityCoords(ped)
    local activePlayers = GetActivePlayers()

    for k, v in pairs(activePlayers) do
      players[k] = GetPlayerServerId(activePlayers[k])
      --print('Nearby players: ' .. players[k])
    end
    --print("TM: Ped Coords: " .. pedLoc)
  end
end)
