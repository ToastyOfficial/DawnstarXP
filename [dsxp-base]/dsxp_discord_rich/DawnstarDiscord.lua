Citizen.CreateThread(function()
    while true do
        local player = GetPlayerPed(-1)
        
        Citizen.Wait(5*1000) -- checks every 5 seconds (to limit resource usage)
        
        SetDiscordAppId(CLIENT_ID_HERE) -- client id (int)

        SetRichPresence( GetPlayerName(source) .. " is on " .. GetStreetNameFromHashKey(GetStreetNameAtCoord(table.unpack(GetEntityCoords(player))) )) -- main text (string)

        SetDiscordRichPresenceAsset("SERVER_NAME_HERE") -- large logo key (string)
        SetDiscordRichPresenceAssetText(GetPlayerName(source)) -- Large logo "hover" text (string)

        SetDiscordRichPresenceAssetSmall("SERVER_INITIALS_HERE") -- small logo key (string)
        SetDiscordRichPresenceAssetSmallText("Health: "..(GetEntityHealth(player)-100)) -- small logo "hover" text (string)

    end
end)