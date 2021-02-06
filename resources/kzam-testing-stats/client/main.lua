ESX = {}
ESX.PlayerData = {}

ESX = nil

Citizen.CreateThread(function()
    while ESX == nil do
        TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
        Citizen.Wait(0)
    end
end)

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)
        if IsControlJustPressed(0, 166) then
            exports["gamz-skillsystem"]:SkillMenu()
        end
    end
end)

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)
        local ped = PlayerPedId()
        local stamina = exports["gamz-skillsystem"]:GetCurrentSkill("Stamina")
        -- if(stamina.Current > 99) then
        -- 	-- SetPedMoveRateOverride(PlayerId(),10.0)
        -- 	-- SetRunSprintMultiplierForPlayer(PlayerId(),1.49)
        -- end

        if IsPedRunning(ped) then
            print(GetPlayerSprintStaminaRemaining(ped))
        end
    end
end)

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(2000)
		if (ESX.PlayerData.inventory ~= nil) then
		for k,v in ipairs(ESX.PlayerData.inventory) do
			if v.count > 0 then
				print(v.value)
			end
		end
		end
    end
end)
