RegisterNetEvent('sendMsg')
AddEventHandler('sendMsg', function(color, name, args)
  --print(color)
  --print(name)
  --print(args)
  TriggerEvent('chat:addMessage', {
  color = color,
  multiline = true,
  args = {name, args}
  })
end)
