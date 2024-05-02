local curVersion = GetResourceMetadata(GetCurrentResourceName(), "version")

local function versionCheck(func)
    Wait(10000)
    func()
end

local function initializeUtils()
    if GetCurrentResourceName() ~= 'hw_utils' then
        print('^1[ERROR] It is required to keep the resource name original. Please rename the resource back.^0')
        return
    else
        Wait(5000)
        print('^7> ================================================================')
        print('^7> ^5[HW Scripts] ^7| ^3hw_utils ^2has been started.') 
        print('^7> ^5[HW Scripts] ^7| ^2Current version: ^3' .. curVersion)
        print('^7> ^5[HW Scripts] ^7| ^6Made by HW Development©')
        print('^7> ^5[HW Scripts] ^7| ^8Creator: ^3Henk W')
        print('^7> ^5[HW Scripts] ^7| ^1NOTE: This is a utility script for HW Scripts!^0')
        print('^7> ================================================================')

        if Config.framework == 'esx' or Config.framework == 'qbcore' then
            Wait(10000)
            print('^7> ================================================================')
            print('> ^0[^2INFO^0] ^3Script is starting up!^0')
            Wait(1000)
            print('> ^0[^2INFO^0] ^3Checking if everything is setup...^0')
            Wait(1000)
            print('> ^0[^2INFO^0] ^2Framework successfully found. ^0- ^5Recognized environment!^0')
            Wait(1000)
            print('> ^0[^2INFO^0] ^2HW Utils initialized successfully!^0')
        else
            Wait(1000)
            print('> ^0[^2INFO^0] ^2Script is starting up!^0')
            Wait(1000)
            print('> ^0[^2INFO^0] ^3Checking if everything is setup...^0')  
            Wait(1000)
            print("> ^0[^2INFO^0] ^1Configured framework '" .. Config.framework .. "' is not supported.^0")
            Wait(1500)
            print('^7> ================================================================')
            print('> ^0[^1ERROR^0] ^1Current ^3framework ^1is NOT supported!^0')
            print('> ^0[^1ERROR^0] ^1This is ^3not ^1caused by the script developer.^0')
            print('> ^0[^1ERROR^0] ^1Please use either ^3"esx" ^1or ^3"qbcore" ^1as framework!^0')
            print('> ^0[^1ERROR^0] ^1You can change this is the ^3config ^1file!^0')
            print('^7> ================================================================')
            print('> ^0[^2INFO^0] ^2If you need more help, you can join the discord for further support!^0')
            print('> ^0[^2INFO^0] ^2Link to discord: ^5https://discord.com/invite/buqhWxVYkQ^0')
            print('^7> ================================================================')
            return
        end
    end
end


versionCheck(initializeUtils)