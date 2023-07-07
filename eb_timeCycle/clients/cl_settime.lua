function Notify(text)
    SetNotificationTextEntry("STRING")
    AddTextComponentString(text)
    DrawNotification(false, false)
end

RegisterCommand("settime", function(source, args)
    local hour = tonumber(args[1])
    local minute = tonumber(args[2])
    NetworkOverrideClockTime(hour, minute, 0)
end)