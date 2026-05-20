local playerList = {}

function getConnectedPlayers()
    return GetActivePlayers()
end

function setConnectedPlayers(list)
    playerList = list
    --print(string.format("playerList: <%s>", json.encode(playerList)))
    --[[
    playerList = {
        1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
        1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
        1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
        1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
        1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
        1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
        1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
        1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
        1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
    }
    ]]
end
RegisterNetEvent("setConnectedPlayers")
AddEventHandler("setConnectedPlayers", setConnectedPlayers)


RegisterCommand("whois", function(source, raw, args)
    local who = tonumber(args[1])
    local name = GetPlayerName(who)
    local message = 'Results: ^*' .. name .. '^r'
    TriggerEvent("chat:addMessage", { args = { "WhoIs", message } })
end)
