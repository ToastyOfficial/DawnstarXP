Citizen.CreateThread(function()
    local player = GetPlayerPed(-1)
    local currentItemIndex = 1
    local selectedItemIndex = 1
    DSMenu.CreateMenu('menu:main', '🚦')
    DSMenu.SetTitleBackgroundColor('menu:main', 15, 60, 125, 255)
    DSMenu.SetTitleColor('menu:main', 255, 255, 255, 255)

    while true do
        if DSMenu.IsMenuOpened('menu:main') then
			if DSMenu.MenuButton('~r~Stop ~w~Traffic', 'menu:main') then
                TriggerEvent("stoptraffic")
            elseif DSMenu.Button('~y~Slow ~w~Traffic') then
                TriggerEvent("slowtraffic")
            elseif DSMenu.Button('~g~Resume ~w~Traffic') then
                TriggerEvent("resumetraffic")

            end

            DSMenu.Display()
        --elseif IsDisabledControlJustPressed(1, KEYBIND) then -- *OPTIONAL* You can change 'KEYBIND' with an ID from here: https://docs.fivem.net/docs/game-references/controls/
            --DSMenu.OpenMenu('menu:main')
        end

        Citizen.Wait(0)
    end
end)
