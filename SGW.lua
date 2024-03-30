RegisterServerEvent("StaffW:perms")
AddEventHandler("StaffW:perms", function(playerPed)
    if IsPlayerAceAllowed(source, "Perms.Staffw") then --add Perms.Staffw to your ace permissions
        TriggerClientEvent('StaffW:HasPerms', source)
    else
        TriggerClientEvent('StaffW:NoPerms', source)
    end
end)
