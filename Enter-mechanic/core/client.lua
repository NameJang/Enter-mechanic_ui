

ESX = nil

local display = false

Citizen.CreateThread(function()
    while ESX == nil do
        TriggerEvent(Config['Routers']['getSharedObject'], function(obj) ESX = obj end)
        Citizen.Wait(0)
    end
end)

RegisterNetEvent('esx:setJob')
AddEventHandler('esx:setJob', function(job)
    ESX.PlayerData.job = job
end)

RegisterCommand('+Mechanicmenu', function(source, args)
	if not isDead then
        if ESX.PlayerData.job and ESX.PlayerData.job.name == Mechanic['Setting']['Base']['MechanicJob'] then
            SetDisplay(not display)
            if Config['Debug'] then
                print('^7[^3ENTER.UI^7] ^7[^4MECHANIC SCRIP^7] ^7[^3MECHANIC OPEN NUI^7]')
            end
        end
	end
end, false)

RegisterKeyMapping('+Mechanicmenu', 'Mechanic', 'keyboard', Mechanic['Setting']['Base']['Key'])



RegisterNUICallback("hijeck", function(data)
    hijeck()
    SetDisplay(false)
    if Config['Debug'] then
        print('^7[^3ENTER.UI^7] ^7[^4MECHANIC SCRIP^7] ^7[^1HIJECK CAR^7]')
    end
end)

RegisterNUICallback("billingmc", function(data)
    xxxxxx()
    SetDisplay(false)
    if Config['Debug'] then
        print('^7[^3ENTER.UI^7] ^7[^4MECHANIC SCRIP^7] ^7[^1BILLING MENU OPEN NUI^7]^2')
    end
end)

RegisterNUICallback("exit", function(data)
    SetDisplay(false)
    if Config['Debug'] then
        print('^7[^3ENTER.UI^7] ^7[^4MECHANIC SCRIP^7] ^7[^1EXIT^7]^2 NUI')
    end
end)

RegisterNUICallback("button1", function(data)
	if 	Mechanic['Setting']['Repairkit']['Checkitem'] then
        RepairKit()
    else
        RepairKitnoCheckitem()
    end
    SetDisplay(false)
    if Config['Debug'] then
        print('^7[^3ENTER.UI^7] ^7[^4MECHANIC SCRIP^7] ^7[^1REPIAR CAR^7]^2')
    end
end)

RegisterNUICallback("clean", function(data)
	clean()
    SetDisplay(false)
    if Config['Debug'] then
        print('^7[^3ENTER.UI^7] ^7[^4MECHANIC SCRIP^7] ^7[^1CLEAN CAR^7]^2')
    end
end)


RegisterNUICallback("annow", function(data)
    annowXX()
    SetDisplay(false)
    if Config['Debug'] then
        print('^7[^3ENTER.UI^7] ^7[^4MECHANIC SCRIP^7] ^7[^1CLEAN CAR^7]^2')
    end
end)


RegisterNUICallback("cloth", function(data)
    TriggerEvent('ZoneMechanic')
    SetDisplay(false)
end)

RegisterNUICallback("clothDf", function(data)
    TriggerEvent('ZoneD')
    SetDisplay(false)
end)

function GetItem(s)
	Inventorys = ESX.GetPlayerData().inventory
	for key, value in pairs(Inventorys) do
		if s == Inventorys[key].name then
			return Inventorys[key]
		end
	end
end

RegisterNetEvent("ZoneMechanic")
AddEventHandler("ZoneMechanic",function()
    local playerPed = PlayerPedId()
    local coords = GetEntityCoords(playerPed)
    for k, v in pairs(Mechanic['Setting']['Blip']['Zone']['Pos']) do
        if GetDistanceBetweenCoords(coords, v.x, v.y, v.z, true) < Mechanic['Setting']['Blip']['Zone']['radius'] then
            setUniform()
        else
			TriggerEvent(Config['Routers']['Notify'], {
                text = '<center><strong class="green-text">คุณไม่ได้อยู่ในโซน</strong><center>',
                type = "success",
                timeout = 3000,
                layout = "centerLeft",
                queue = "global"
            })
        end
    end
end)

RegisterNetEvent("ZoneD")
AddEventHandler("ZoneD",function()
    local playerPed = PlayerPedId()
    local coords = GetEntityCoords(playerPed)
    for k, v in pairs(Mechanic['Setting']['Blip']['Zone']['Pos']) do
        if GetDistanceBetweenCoords(coords, v.x, v.y, v.z, true) < Mechanic['Setting']['Blip']['Zone']['radius'] then
            getPlayerSkinDF()
            if Config['Debug'] then
                print('^7[^3ENTER.UI^7] ^7[^4MECHANIC SCRIP^7] ^7[^1CALLBACK SKIN^7]^2')
            end
        else
			TriggerEvent(Config['Routers']['Notify'], {
                text = '<center><strong class="green-text">คุณไม่ได้อยู่ในโซน</strong><center>',
                type = "success",
                timeout = 3000,
                layout = "centerLeft",
                queue = "global"
            })
        end
    end
end)

function SetDisplay(bool)
    display = bool
    SetNuiFocus(bool, bool)
    SendNUIMessage({
        type = "ui",
        status = bool,
    })
end



Citizen.CreateThread(function()
    Blip()
    BlipRadius()
end)
-- -----------
-- RegisterCommand("nui1", function(source, args)
--     SetDisplay1(not display1)
-- end)

-- --very important cb 
-- RegisterNUICallback("exit1", function(data)
--     SetDisplay1(false)
-- end)

-- -- this cb is used as the main route to transfer data back 
-- -- and also where we hanld the data sent from js
-- RegisterNUICallback("main1", function(data)
--     RepairKit()
--     SetDisplay1(false)
-- end)

-- RegisterNUICallback("error1", function(data)
--     SetDisplay1(false)
-- end)

-- function SetDisplay1(bool1)
--     display1 = bool1
--     SetNuiFocus(bool1, bool1)
--     SendNUIMessage({
--         type = "ui1",
--         status = bool1,
--     })
-- end

