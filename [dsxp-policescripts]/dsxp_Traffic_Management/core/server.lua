

-- receive stop command from client
RegisterNetEvent('tm:stopTraffic')
AddEventHandler('tm:stopTraffic', function(players, pedLoc)

  perms = IsPlayerAceAllowed(source, "command.stopTraffic")
  if perms then

    print("Received stopTraffic command at: " .. pedLoc)
    --TriggerClientEvent('tm:addZone', coords, speed, blipColor)
    for k, v in pairs(players) do
      local player = players[k]
      TriggerClientEvent('tm:addZone', player , pedLoc, 0.0, 1)
      print("Tried to trigger client event for " .. player)
    end
  end
end)

-- receive slow command from client
RegisterNetEvent('tm:slowTraffic')
AddEventHandler('tm:slowTraffic', function(players, pedLoc)
  perms = IsPlayerAceAllowed(source, "command.stopTraffic")
  if perms then
    print("Received stopTraffic command at: " .. pedLoc)
    --TriggerClientEvent('tm:addZone', coords, speed, blipColor)
    for k, v in pairs(players) do
      local player = players[k]
      TriggerClientEvent('tm:addZone', player, pedLoc, 5.0, 5)
      print("Tried to trigger client event  for " .. player)
    end
  end
end)

-- receive resume command from client
RegisterNetEvent('tm:resTraffic')
AddEventHandler('tm:resTraffic', function(players)
  perms = IsPlayerAceAllowed(source, "command.stopTraffic")
  if perms then
    print(GetPlayerName(source) .. ' has resumed traffic.')
    print(players[1])
    for k, v in pairs(players) do
      local player = players[k]
      TriggerClientEvent('tm:remZones', player)
      print("Tried to remove zones for " .. player)
    end
  end
end)
