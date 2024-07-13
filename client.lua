local notifications = {}

RegisterCommand('testnotify', function(source, args, rawCommand)
    local title = args[1] or 'Title'
    local message = args[2] or 'Message'
    local duration = tonumber(args[3]) or 5000
    local type = args[4] or 'info'
    local position = args[5] or 'top-right'

    SendNUIMessage({
        action = 'showNotification',
        title = title,
        message = message,
        duration = duration,
        type = type,
        position = position
    })
end, false)

exports('ShowNotification', function(title, message, duration, type, position)
    SendNUIMessage({
        action = 'showNotification',
        title = title,
        message = message,
        duration = duration,
        type = type,
        position = position
    })
end)
