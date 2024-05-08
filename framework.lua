PlayerLoaded, PlayerData = nil, {}

-- Function to initialize ESX framework handlers
local function initESXFramework()
    ESX = exports['es_extended']:getSharedObject()

    RegisterNetEvent('esx:playerLoaded', function(xPlayer)
        PlayerData = xPlayer
        PlayerLoaded = true
        print('^0[^2INFO^0] ^2Player data loaded for ESX framework.')
    end)

    RegisterNetEvent('esx:onPlayerLogout', function()
        table.wipe(PlayerData)
        PlayerLoaded = false
        print('^0[^2INFO^0] ^2Player logged out from ESX framework.')
    end)

    AddEventHandler('onResourceStart', function(resourceName)
        if GetCurrentResourceName() == resourceName and PlayerLoaded then
            print('^2[INFO] Resource started with an already loaded player in ESX.')
        end
    end)
end

-- Function to initialize QBCore framework handlers
local function initQBCoreFramework()
    QBCore = exports['qb-core']:GetCoreObject()

    AddStateBagChangeHandler('isLoggedIn', '', function(_bagName, _key, value, _reserved, _replicated)
        if value then
            PlayerData = QBCore.Functions.GetPlayerData()
            PlayerLoaded = true
            print('^0[^2INFO^0] ^2Player data loaded for QBCore framework.')
        else
            table.wipe(PlayerData)
            PlayerLoaded = false
            print('^0[^2INFO^0] ^2Player logged out from QBCore framework.')
        end
    end)

    AddEventHandler('onResourceStart', function(resourceName)
        if GetCurrentResourceName() == resourceName and PlayerLoaded then
            print('> ^0[^2INFO^0] ^2Resource started with an already logged-in player in QBCore.')
        end
    end)
end

-- Main configuration check for framework
if Config.framework == 'esx' then
    if GetResourceState('es_extended') == 'started' then
        initESXFramework()
        Wait(30000)
        print('> ^0[^2INFO^0] ^3ESX ^5framework is loaded and operational.')
        print('^7> ================================================================')
    else
        Wait(30000)
        print('^0[^1ERROR^0] ^1ESX framework is not started.')
    end
elseif Config.framework == 'qbcore' then
    if GetResourceState('qb-core') == 'started' then
        initQBCoreFramework()
        Wait(30000)
        print('> ^0[^2INFO^0] ^3QBCore ^5framework is loaded and operational.')
        print('^7> ================================================================')
    else
        Wait(30000)
        print('^0[^1ERROR^0] ^1QBCore framework is not started.')
    end
end