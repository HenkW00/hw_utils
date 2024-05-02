fx_version 'cerulean'
games { 'gta5' }
lua54 'yes'

author 'HW Development©'
description 'Sample resource for FiveM by HW Development©'
version '1.0.0'

shared_scripts {
    'config.lua'
}

server_scripts {
    'utils.lua',
    'framework.lua'
}

dependencies { -- Only include if your resource truly depends on these
    'es_extended'
   -- 'qb-core'
}