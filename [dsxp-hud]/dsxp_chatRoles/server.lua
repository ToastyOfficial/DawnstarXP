function stringsplit(inputstr, sep)
    if sep == nil then
        sep = "%s"
    end
    local t={} ; i=1
    for str in string.gmatch(inputstr, "([^"..sep.."]+)") do
        t[i] = str
        i = i + 1
    end
    return t
end


function getRole(target)
  local color = {218, 213, 223}
  local roleString = "Loser | "
  local player = Entity(GetPlayerPed(target))


    if IsPlayerAceAllowed(target,'chat.sadmin') then
      color = {158, 163, 245}
      roleString = "Staff | " .. player.state.level .. " | "

    elseif IsPlayerAceAllowed(target,'chat.admin') then
      color = {158, 163, 245}
      roleString = "Staff | " .. player.state.level .. " | "

    elseif IsPlayerAceAllowed(target,'chat.moderator') then
      color = {158, 163, 245}
      roleString = "Staff | " .. player.state.level .. " | "

    elseif IsPlayerAceAllowed(target,'chat.supporter') then
      color = {191, 159, 214}
      roleString = "Supporter | " .. player.state.level .. " | "

    elseif IsPlayerAceAllowed(target,'chat.booster') then
      color = {234, 103, 221}
      roleString = "Booster | " .. player.state.level .. " | "

    elseif IsPlayerAceAllowed(target,'chat.verified') then
      color = {192, 181, 204}
      roleString = " ★ | " .. player.state.level .. " | "
    else
      roleString = player.state.level .. " | "
    end
  return color, roleString
end

AddEventHandler('chatMessage', function(source, name, msg)
	local args = stringsplit(msg)
	CancelEvent()


  local color, roleString = getRole(source)

  local author = roleString .. name

  TriggerClientEvent('sendMsg', -1, color, author, msg)
end)

function getHighestRole(player)

end
