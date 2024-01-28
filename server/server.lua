local QBCore = exports['qb-core']:GetCoreObject()

local cooldown = 10 * 1000
local lastUsage = 0

RegisterCommand(Config.AbrirNegocioCommand, function(source, args, rawCommand)
    local currentTime = GetGameTimer()

    if currentTime - lastUsage < cooldown then
        local remainingTime = (lastUsage + cooldown - currentTime) / 1000
    else
        local player = QBCore.Functions.GetPlayer(source)
        local jobName = player.PlayerData.job.name

        local allowedJobs = Config.JobsName

        if allowedJobs[jobName] then
            TriggerClientEvent('notificacionabrirnegocio', -1, jobName)
            lastUsage = currentTime
        end
    end
end, false)

RegisterCommand(Config.CerrarNegocioCommand, function(source, args, rawCommand)
    local currentTime = GetGameTimer()

    if currentTime - lastUsage < cooldown then
        local remainingTime = (lastUsage + cooldown - currentTime) / 1000
    else
        local player = QBCore.Functions.GetPlayer(source)
        local jobName = player.PlayerData.job.name

        local allowedJobs = Config.JobsName

        if allowedJobs[jobName] then
            TriggerClientEvent('notificacioncerrarnegocio', -1, jobName)
            lastUsage = currentTime
        end
    end
end, false)
