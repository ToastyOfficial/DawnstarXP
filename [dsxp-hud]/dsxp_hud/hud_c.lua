--------------------------------
--------------------------------
----------- MAIN HUD -----------
--------------------------------
--------------------------------

RegisterNetEvent('c:updateAOP')
AddEventHandler('c:updateAOP', function(text)
  SendNUIMessage({
    type = 'updateAOP',
    text = text,
  })
end)

function updatePostal(text)
  SendNUIMessage({
    type = 'updatePostal',
    text = text,
  })
end
exports('updatePostal', updatePostal)

--------------------------------
--------------------------------
--------- VEHICLE HUD ----------
--------------------------------
--------------------------------

function updateFuel(amount)
  SendNUIMessage({
    type = 'updateFuel',
    amount = amount,
  })
end

function updateVehInfo(compass, speed, location, road)
  SendNUIMessage({
    type = 'updateVehInfo',
    compass = compass,
    speed = speed,
    location = location,
    road = road,
  })
end

function showVehHud(bool)
  SendNUIMessage({
    type = 'showVehHud',
    bool = bool,
  })
end

RegisterNetEvent('c:updateCops')
AddEventHandler('c:updateCops', function(amount, updating)
  SendNUIMessage({
    type = 'updateCops',
    amount = amount,
    updating = updating,
  })
end)

RegisterNetEvent('c:updateEMS')
AddEventHandler('c:updateEMS', function(amount, updating)
  SendNUIMessage({
    type = 'updateEMS',
    amount = GlobalState.emsCount,
    updating = updating,
  })
end)

RegisterNetEvent('c:updateTow')
AddEventHandler('c:updateTow', function(amount, updating)
  SendNUIMessage({
    type = 'updateTow',
    amount = GlobalState.towCount,
    updating = updating,
  })
end)

local showing = false
RegisterKeyMapping('showClockedHUD', "Show Amount of Cops/EMS", 'MOUSE_BUTTON', 'MOUSE_MIDDLE')
RegisterCommand('showClockedHUD', function()
  CreateThread(function()
    if not showing then
      showing = true
      SendNUIMessage({
        type = 'showCops',
      })

      Wait(4000)
      showing = false
    end
  end)

end)

--------------------------------
--------------------------------
------- SIREN CONTROLLER -------
--------------------------------
--------------------------------
--
-- RegisterNetEvent('showLightsHUD')
-- AddEventHandler('showLightsHUD', function(stages)
--   for k, v in pairs(stages) do
--
--   end
-- end)
--
-- RegisterNetEvent('updateLightsHUD')
-- AddEventHandler('updateLightsHUD', function(stages)
--
-- end)
--
-- RegisterNetEvent('hideLightsHUD')
-- AddEventHandler('hideLightsHUD', function(stages)
--
-- end)
