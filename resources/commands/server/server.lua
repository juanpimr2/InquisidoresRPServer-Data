RegisterServerEvent('krp:help')
AddEventHandler('krp:help', function()
    TriggerClientEvent('krp:sendMessage', -1)
end)