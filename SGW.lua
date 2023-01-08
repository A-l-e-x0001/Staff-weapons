RegisterServerEvent("StaffW:perms")
AddEventHandler("StaffW:perms", function(playerPed)
    if IsPlayerAceAllowed(source, "Administrator") then --Change "Administrator" to what your likeing
        TriggerClientEvent('StaffW:HasPerms', source)
    else
        TriggerClientEvent('StaffW:NoPerms', source)
    end
end)
