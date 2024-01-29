local QBCore = exports['qb-core']:GetCoreObject()

RegisterNetEvent('notificacionabrirnegocio')
AddEventHandler('notificacionabrirnegocio', function(job)
    local nombrejob = Config.JobsName[job]
    SendNUIMessage({
        type = 'abrirnegocio',
        jobname = nombrejob,
        abrir = Config.Message.open,
        backgroundcolor = Config.UiOpen.backgroundcolor,
        iconbackgroundcolor = Config.UiOpen.iconbackgroundcolor,

        icon = Config.UiOpen.icon,
        iconcolor = Config.UiOpen.iconcolor,
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


        icon = Config.UiClose.icon,
        iconcolor = Config.UiClose.iconcolor,
    })
end)
RegisterNetEvent('anunciopersonalizado')
AddEventHandler('anunciopersonalizado', function(job,message)
    local nombrejob = Config.JobsName[job]
    print(message)
    SendNUIMessage({
        type = 'anunciopersonalizado',
        jobname = nombrejob,
        text = message,
        backgroundcolor = Config.UiAnuncioPersonalizado.backgroundcolor,
        iconbackgroundcolor = Config.UiAnuncioPersonalizado.iconbackgroundcolor,


        icon = Config.UiAnuncioPersonalizado.icon,
        iconcolor = Config.UiAnuncioPersonalizado.iconcolor,
    })
end)
