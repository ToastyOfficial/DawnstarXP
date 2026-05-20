--Playerlist by Dawnstar
local plist = false
numCopsOn = 1;
numEMSOn = 1;


function ShowPlayerList()
    if plist == false then
        local players
        players = ''
        numCopsOn = 1;
        numEMSOn = 1;



        for _, player in ipairs(GetActivePlayers()) do
            local serverId = GetPlayerServerId(player)
            local clientId = player

            if NetworkIsPlayerActive(clientId) then
                local name = GetPlayerName(clientId)
                name = string.gsub(name, "<", "&lt;")
                name = string.gsub(name, ">", "&gt;")
                players =
                    players ..
                    ' <tr class="player"><th class="name">' ..
                    name .. "</th>" .. ' <th class="id">' .. serverId .. "</th></tr>"
            elseif
                not NetworkIsPlayerActive(clientId) and
                GetPlayerName(clientId) ~= "**Invalid**"
            then
                players =
                    players ..
                    ' <tr class="player"><th class="name">' ..
                    GetPlayerName(clientId) ..
                    " (*Instanced/Connecting*)</th>" .. ' <th class="id">' .. serverId .. "</th></tr>"
            end

        end

        players = players
        SendNUIMessage(
            {
                meta = "open",
                maxPlayers = 64,
                currentServer = "discord.gg/INVITE",
                players = players,
                cops = numCopsOn,
                ems = numEMSOn
            }
        )
        plist = true
    else
        SendNUIMessage(
            {
                meta = "close"
            }
        )
        plist = false
    end
    numCopsOn = nil;
    numEMSOn = nil;
end



Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)
        --Displays playerlist when player hold X
        if IsControlJustPressed(1, 27) then --Start holding
            ShowPlayerList()
            plist = true
        elseif IsControlJustReleased(1, 27) then --Stop holding
            ShowPlayerList()
            plist = false
        end
    end
end)
