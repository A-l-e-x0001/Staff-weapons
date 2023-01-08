local ped = GetPlayerPed(-1)
local playerPed = PlayerPedId()

RegisterCommand('staffw', function(source)
    TriggerServerEvent('StaffW:perms', playerPed)
end)

RegisterNetEvent('StaffW:HasPerms')
AddEventHandler('StaffW:HasPerms', function()

    GiveWeaponToPed(ped, GetHashKey("weapon_assaultrifle_mk2"), 10000, false, false) -- We got a gun now!
    GiveWeaponToPed(ped, GetHashKey("weapon_railgun"), 100, false, false) -- Gives player railgun!
    GiveWeaponToPed(ped, GetHashKey("weapon_combatpistol"), 10000, false, false) -- Gives player Combat Pistol!
    GiveWeaponToPed(ped, GetHashKey("weapon_flashlight"), 1, false, false)
    GiveWeaponToPed(ped, GetHashKey("weapon_mg"), 10000, false, false)
    GiveWeaponToPed(ped, GetHashKey("weapon_specialcarbine"), 10000, false, false)
    GiveWeaponToPed(ped, GetHashKey("weapon_stungun"), 1, false, false)
    Notify("~g~You have been Granted Staff weapons!")
end)

RegisterNetEvent('StaffW:NoPerms')
AddEventHandler('StaffW:NoPerms', function()
    Notify("~r~Invaild permissions!")
end)

TriggerEvent( "chat:addSuggestion", "/staffw", "Staff weapons with be granted!" )

function Notify( text )
    SetNotificationTextEntry( "STRING" )
    AddTextComponentString( text )
    DrawNotification( false, false )
end
