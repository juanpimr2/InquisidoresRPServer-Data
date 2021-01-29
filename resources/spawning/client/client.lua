RegisterCommand('vehicle', function(source, args)
    local car = GetHashKey(args[1])
    local playerSrc = PlayerPedId()
    --local entityHeading = GetEntityHeading(playerSrc)
    RequestModel(car)--
    while not HasModelLoaded(car) do
        Citizen.Wait(1)
        RequestModel(car)
    end
    local x, y, z = table.unpack(GetEntityCoords(playerSrc))
    CreateVehicle(car, x, y + 2 , z + 0.25, GetEntityHeading(playerSrc), true, false)
end)
