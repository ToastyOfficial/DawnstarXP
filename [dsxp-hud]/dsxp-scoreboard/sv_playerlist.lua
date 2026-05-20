local playerList = {}

function getConnectedPlayers()
    return playerList
end

function updatePlayerList()
    local tmp = {}
    for _, player in pairs(GetPlayers()) do
        table.insert(tmp, tonumber(player))
    end
    table.sort(tmp)
    playerList = tmp
    TriggerClientEvent("setConnectedPlayers", -1, playerList)
    --print(string.format("playerList: <%s>", json.encode(playerList)))
end

AddEventHandler("playerDropped", updatePlayerList)
AddEventHandler("playerConnecting", updatePlayerList)
AddEventHandler(
    "onResourceStart",
    function(resource)
        if resource ~= GetCurrentResourceName() then
            return
        end
        updatePlayerList()
    end
)

Citizen.CreateThread(
    function()
        while true do
            Wait(5000)
            updatePlayerList()
        end
    end
)
