RegisterNetEvent('baseevents:enteredVehicle')
AddEventHandler('baseevents:enteredVehicle', function()
  TriggerClientEvent('setVehicleHUD', source, true)
end)

RegisterNetEvent('baseevents:leftVehicle')
AddEventHandler('baseevents:leftVehicle', function()

  TriggerClientEvent('setVehicleHUD', source, false)
end)

RegisterNetEvent('baseevents:enteringAborted')
AddEventHandler('baseevents:enteringAborted', function()

  TriggerClientEvent('setVehicleHUD', source, false)
end)
