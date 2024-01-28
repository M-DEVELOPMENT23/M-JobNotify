
RegisterNetEvent('notificacionabrirnegocio')
AddEventHandler('notificacionabrirnegocio', function(job)
    local nombrejob = Config.JobsName[job]
    SendNUIMessage({
        type = 'abrirnegocio',
        jobname = nombrejob,
        abrir = Config.Message.open,
        backgroundcolor = Config.UiOpen.backgroundcolor,
        iconbackgroundcolor = Config.UiOpen.iconbackgroundcolor,
    })
end)


RegisterNetEvent('notificacioncerrarnegocio')
AddEventHandler('notificacioncerrarnegocio', function(job)
    local nombrejob = Config.JobsName[job]
    SendNUIMessage({
        type = 'cerrarnegocio',
        jobname = nombrejob,
        cerrar = Config.Message.close,
        backgroundcolor = Config.UiClose.backgroundcolor,
        iconbackgroundcolor = Config.UiClose.iconbackgroundcolor,
    })
end)
