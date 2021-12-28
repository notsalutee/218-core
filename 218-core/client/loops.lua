CreateThread(function()
    while true do
        Wait(0)
        if LocalPlayer.state.isLoggedIn then
            Wait((1000 * 60) * 218Core.Config.UpdateInterval)
            TriggerServerEvent('218Core:UpdatePlayer')
        end
    end
end)

CreateThread(function()
    while true do
        Wait(218Core.Config.StatusInterval)
        if LocalPlayer.state.isLoggedIn then
            if 218Core.Functions.GetPlayerData().metadata['hunger'] <= 0 or
                    218Core.Functions.GetPlayerData().metadata['thirst'] <= 0 then
                local ped = PlayerPedId()
                local currentHealth = GetEntityHealth(ped)
                SetEntityHealth(ped, currentHealth - math.random(5, 10))
            end
        end
    end
end)
