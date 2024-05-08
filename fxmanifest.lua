fx_version 'cerulean'
game 'gta5'
use_experimental_fxv2_oal 'yes'
lua54 'yes'

-- Export: GetUtility

author 'HenkW'
description 'Utility resource for FiveM by HW Development©'
version '1.0.5'

shared_scripts {
    'config.lua',
    'webhook/webhook.lua'
}

client_scripts {
    'client/*.lua',
    'client/keymapping/*.lua',
    'client/menu/*.lua',
    'client/bridge/*.lua'
}

server_scripts {
    'utils.lua',
    'framework.lua',
    'server/*.lua',
    'server/version*.lua',
    'server/log/*.lua',
    'server/bridge/*.lua'
}

dependencies {
    'es_extended' -- << Uncomment to use ESX framework
   -- 'qb-core'   -- << Uncomment to use QBCORE framework
}

escrow_ignore {
    'config.lua',
    'webhook/*.lua',
    'fxmanifest.lua',
    'README.MD'
}