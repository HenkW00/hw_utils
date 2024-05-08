Config = {}

-- Recommended to leave as 'true'
Config.checkForUpdates = true

-- Please set framework as either 'ESX' or 'QBCORE'
-- Also make sure you uncomment the framework u are using in the fxmanifest.lua on line:19/20
Config.framework = 'esx'

-- Place here your death check
Config.Notification = function(player, msg, title, type, color, time)
    if IsDuplicityVersion() then
        TriggerClientEvent('esx:showNotification', player, msg, 'info')
    else
        TriggerEvent('esx:showNotification', msg, 'info')
    end
end

-- Place here your notification
Config.DeathCheck = function(player)
    if IsDuplicityVersion() then
        return false
    else
        return IsPedFatallyInjured(PlayerPedId())
    end
end