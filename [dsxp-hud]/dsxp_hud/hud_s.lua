local cops = 0
local ems = 0

function updateAOP(text)
  TriggerClientEvent('c:updateAOP', -1, text)
end
exports('updateAOP', updateAOP)

function updateCops(amount, updating)
  cops = amount
  TriggerClientEvent('c:updateCops', -1, amount, updating)
end
exports('updateCops', updateCops)


function updateEMS(amount, updating)
  ems = amount
  TriggerClientEvent('c:updateEMS', -1, amount, updating)
end
exports('updateEMS', updateEMS)

function updateTow(amount, updating)
  ems = amount
  TriggerClientEvent('c:updateTow', -1, amount, updating)
end
exports('updateTow', updateTow)
