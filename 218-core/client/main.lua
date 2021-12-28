218Core = {}
218Core.PlayerData = {}
218Core.Config = QBConfig
218Core.Shared = QBShared
218Core.ServerCallbacks = {}

exports('GetCoreObject', function()
    return 218Core
end)

-- To use this export in a script instead of manifest method
-- Just put this line of code below at the very top of the script
-- local 218Core = exports['218core']:GetCoreObject()