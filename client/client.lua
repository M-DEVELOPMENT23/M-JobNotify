
RegisterNetEvent('notificacionabrirnegocio')
AddEventHandler('notificacionabrirnegocio', function(job)
    local nombrejob = Config.JobsName[job]
    SendNUIMessage({
        type = 'abrirnegocio',
        jobname = nombrejob,
        abrir = Config.Message.open,
    })
end)


RegisterNetEvent('notificacioncerrarnegocio')
AddEventHandler('notificacioncerrarnegocio', function(job)
    local nombrejob = Config.JobsName[job]
    SendNUIMessage({
        type = 'cerrarnegocio',
        jobname = nombrejob,
        cerrar = Config.Message.close,
    })
end)
