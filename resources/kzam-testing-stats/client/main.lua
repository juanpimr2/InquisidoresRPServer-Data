ESX = {}
ESX.PlayerData = {}

ESX = nil

Citizen.CreateThread(function()
    while ESX == nil do
        TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
        Citizen.Wait(0)
    end
end)



local x1, y1, z1 = 0.0
local x2, y2, z2 = 0.0
local ped = PlayerPedId()
local nped = 0

RegisterCommand("ped", function()
     nped = CreatePed(4, "csb_mweather", x1, y1, z1, 0.0, true, true)
end, false)

RegisterCommand("1", function()
    ped = PlayerPedId()
    x1, y1, z1 = table.unpack(GetEntityCoords(ped, true))
end, false)


RegisterCommand("2", function()
    ped = PlayerPedId()
    x2, y2, z2 = table.unpack(GetEntityCoords(ped, true))
end, false)

RegisterCommand("go", function()
    --TaskGoStraightToCoord(nped, x2, y2, z2, 1.0, 100000, 0.0, 2.0)
    if (nped == 0) then
        nped = CreatePed(4, "csb_mweather", x1, y1, z1, 0.0, true, true)
    end
    GiveWeaponToPed(nped, "WEAPON_COMBATPISTOL", 1, false, true)
    TaskGoToCoordAnyMeans(nped, x2, y2, z2, 1.0, 0, 0, 786603, 1.0)
    while true do
        Citizen.Wait(100)
        local coords = GetEntityCoords(nped, true)
        local dist = Vdist2(coords.x, coords.y, coords.z, x2, y2, z2)
        print(dist)
        if (dist < 2.0) then
            ClearPedTasks(nped)
            TaskStartScenarioInPlace(nped, "WORLD_HUMAN_PUSH_UPS", 0, true)
            print("done with task")
            break
        end
    end
end, false)

RegisterCommand("reset", function()
    SetEntityAsMissionEntity(nped, true, true)
    DeleteEntity(nped)
    nped = 0
end, false)



-- Citizen.CreateThread(function()
--     while true do
--         Citizen.Wait(0)
--         if IsControlJustPressed(0, 166) then
--             exports["gamz-skillsystem"]:SkillMenu()
--         end
--     end
-- end)

-- Citizen.CreateThread(function()
--     while true do
--         Citizen.Wait(0)
--         local ped = PlayerPedId()
--         local stamina = exports["gamz-skillsystem"]:GetCurrentSkill("Stamina")
--         -- if(stamina.Current > 99) then
--         -- 	-- SetPedMoveRateOverride(PlayerId(),10.0)
--         -- 	-- SetRunSprintMultiplierForPlayer(PlayerId(),1.49)
--         -- end

--         if IsPedRunning(ped) then
--             print(GetPlayerSprintStaminaRemaining(ped))
--         end
--     end
-- end)

-- Citizen.CreateThread(function()
--     while true do
--         Citizen.Wait(2000)
-- 		if (ESX.PlayerData.inventory ~= nil) then
-- 		for k,v in ipairs(ESX.PlayerData.inventory) do
-- 			if v.count > 0 then
-- 				print(v.value)
-- 			end
-- 		end
-- 		end
--     end
-- end)
