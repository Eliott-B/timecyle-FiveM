RegisterCommand("freezetime", function()
    activated = true
    local hour = GetClockHours()
    local minute = GetClockMinutes()
    print(hour, minute)
    while activated do
        Wait(1)
        NetworkOverrideClockTime(hour, minute, 0)
	end
end)

RegisterCommand("unfreezetime", function()
    activated = false
end)
