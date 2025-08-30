clean = function()
	local playerPed = PlayerPedId()
	local vehicle = ESX.Game.GetVehicleInDirection()
	local coords = GetEntityCoords(playerPed)
	if DoesEntityExist(vehicle) then
		TriggerEvent(Config['Routers']['Notify'], {
			text = '<center><strong class="green-text">กำลังเช็ดรถ</strong><center>',
			type = "success",
			timeout = 3000,
			layout = "centerLeft",
			queue = "global"
		})
		Wait(500)
			TriggerEvent("mythic_progbar:client:progress", {
				name = "unique_action_name",
				duration = 20 * 1000,
				label = "กำลังเช็ดรถ",
				useWhileDead = false,
				canCancel = false,
				controlDisables = {
					disableMovement = true,
					disableCarMovement = true,
					disableMouse = false,
					disableCombat = true--,
				},
				animation = {
					task = 'WORLD_HUMAN_MAID_CLEAN',
				}	
			},
			function(status)
				if not status then
					SetVehicleDirtLevel(vehicle, 0)
					ClearPedTasksImmediately(playerPed)
				end
			end)
	else
		TriggerEvent(Config['Routers']['Notify'], {
			text = '<center><strong class="green-text">ตรงนี้ไม่มีรถ</strong><center>',
			type = "success",
			timeout = 3000,
			layout = "centerLeft",
			queue = "global"
		})
	end
end

RepairKitnoCheckitem = function()
	local playerPed = PlayerPedId()
				local vehicle = ESX.Game.GetVehicleInDirection()
				local coords = GetEntityCoords(playerPed)
				local ped = PlayerPedId()
				local coords = GetEntityCoords(ped)
					if IsPedSittingInAnyVehicle(playerPed) then
						ESX.ShowNotification(("inside_vehicle"))
						return
					end
					if DoesEntityExist(vehicle) then
						TriggerEvent(Config['Routers']['Notify'], {
							text = '<center><strong class="green-text">กำลังซ่อมรถ</strong><center>',
							type = "success",
							timeout = 3000,
							layout = "centerLeft",
							queue = "global"
						})
						Wait(500)
						if Mechanic['Setting']['EffectFix']['CamShake'] then
							ShakeGameplayCam("ROAD_VIBRATION_SHAKE", 1.0)
						end
						if Mechanic['Setting']['EffectFix']['Effect_Elc'] then
							local particleDictionary = "core"
							local particleName = "ent_sht_electrical_box"
							RequestNamedPtfxAsset(particleDictionary)
							while not HasNamedPtfxAssetLoaded(particleDictionary) do
							Citizen.Wait(0)
							end
							SetPtfxAssetNextCall(particleDictionary)
							effect = StartParticleFxLoopedOnEntity(particleName, GetPlayerPed(-1), 0.0, 0.9, 0.0, 0.0, 0.0, 0.0, 1.5, 0, 0, 0)
						end
							TriggerEvent("mythic_progbar:client:progress", {
								name = "unique_action_name",
								duration = 20 * 1000,
								label = "กำลังซ่อมรถ",
								useWhileDead = false,
								canCancel = false,
								controlDisables = {
									disableMovement = true,
									disableCarMovement = true,
									disableMouse = false,
									disableCombat = true--,
								},
								animation = {
									animDict = "mini@repair",
									anim = "fixing_a_player",
								}
							},
							function(status)
								if not status then
									SetVehicleFixed(vehicle)
									SetVehicleDeformationFixed(vehicle)
									SetVehicleUndriveable(vehicle, false)
									SetVehicleEngineOn(vehicle, true, true)
									ClearPedTasksImmediately(playerPed)
									if Mechanic['Setting']['EffectFix']['Effect_Elc'] then
										local particleDictionary = "core"
										local particleName = "ent_sht_electrical_box"
										RequestNamedPtfxAsset(particleDictionary)
										while not HasNamedPtfxAssetLoaded(particleDictionary) do
										Citizen.Wait(0)
										end
										SetPtfxAssetNextCall(particleDictionary)
										effect = StartParticleFxLoopedOnEntity(particleName, GetPlayerPed(-1), 0.0, 0.9, 0.0, 0.0, 0.0, 0.0, 1.5, 0, 0, 0)
									end
									if Mechanic['Setting']['EffectFix']['CamShake'] then
										StopGameplayCamShaking(true)
									end
								end
							end)
					else
						TriggerEvent(Config['Routers']['Notify'], {
							text = '<center><strong class="green-text">ตรงนี้ไม่มีรถ</strong><center>',
							type = "success",
							timeout = 3000,
							layout = "centerLeft",
							queue = "global"
						})
					end

end

RepairKit = function()
			if GetItem('fixkit').count >= 1 then
				local playerPed = PlayerPedId()
				local vehicle = ESX.Game.GetVehicleInDirection()
				local coords = GetEntityCoords(playerPed)
				local ped = PlayerPedId()
				local coords = GetEntityCoords(ped)
					if IsPedSittingInAnyVehicle(playerPed) then
						ESX.ShowNotification(("inside_vehicle"))
						return
					end
					if DoesEntityExist(vehicle) then
						TriggerEvent(Config['Routers']['Notify'], {
							text = '<center><strong class="green-text">กำลังซ่อมรถ</strong><center>',
							type = "success",
							timeout = 3000,
							layout = "centerLeft",
							queue = "global"
						})
						Wait(500)
						if Mechanic['Setting']['EffectFix']['CamShake'] then
							ShakeGameplayCam("ROAD_VIBRATION_SHAKE", 1.0)
						end
						if Mechanic['Setting']['EffectFix']['Effect_Elc'] then
							local particleDictionary = "core"
							local particleName = "ent_sht_electrical_box"
							RequestNamedPtfxAsset(particleDictionary)
							while not HasNamedPtfxAssetLoaded(particleDictionary) do
							Citizen.Wait(0)
							end
							SetPtfxAssetNextCall(particleDictionary)
							effect = StartParticleFxLoopedOnEntity(particleName, GetPlayerPed(-1), 0.0, 0.9, 0.0, 0.0, 0.0, 0.0, 1.5, 0, 0, 0)
						end
							TriggerEvent("mythic_progbar:client:progress", {
								name = "unique_action_name",
								duration = 20 * 1000,
								label = "กำลังซ่อมรถ",
								useWhileDead = false,
								canCancel = false,
								controlDisables = {
									disableMovement = true,
									disableCarMovement = true,
									disableMouse = false,
									disableCombat = true--,
								},
								animation = {
									animDict = "mini@repair",
									anim = "fixing_a_player",
								}
							},
							function(status)
								if not status then
									SetVehicleFixed(vehicle)
									SetVehicleDeformationFixed(vehicle)
									SetVehicleUndriveable(vehicle, false)
									SetVehicleEngineOn(vehicle, true, true)
									if Mechanic['Setting']['Repairkit']['removeitem'] then
										TriggerServerEvent('Fixkit:removeItem', Mechanic['Setting']['Repairkit']['ItemFix'])
									end
									ClearPedTasksImmediately(playerPed)
									if Mechanic['Setting']['EffectFix']['Effect_Elc'] then
										local particleDictionary = "core"
										local particleName = "ent_sht_electrical_box"
										RequestNamedPtfxAsset(particleDictionary)
										while not HasNamedPtfxAssetLoaded(particleDictionary) do
										Citizen.Wait(0)
										end
										SetPtfxAssetNextCall(particleDictionary)
										effect = StartParticleFxLoopedOnEntity(particleName, GetPlayerPed(-1), 0.0, 0.9, 0.0, 0.0, 0.0, 0.0, 1.5, 0, 0, 0)
									end
									if Mechanic['Setting']['EffectFix']['CamShake'] then
										StopGameplayCamShaking(true)
									end
								end
							end)
					else
						TriggerEvent(Config['Routers']['Notify'], {
							text = '<center><strong class="green-text">ตรงนี้ไม่มีรถ</strong><center>',
							type = "success",
							timeout = 3000,
							layout = "centerLeft",
							queue = "global"
						})
					end
			else
				TriggerEvent(Config['Routers']['Notify'], {
					text = '<center><strong class="green-text">คุณไม่มีกล่องซ่อม</strong><center>',
					type = "success",
					timeout = 3000,
					layout = "centerLeft",
					queue = "global"
				})
			end
end


hijeck = function()
	local playerPed = PlayerPedId()
	local vehicle = ESX.Game.GetVehicleInDirection()
	local coords = GetEntityCoords(playerPed)
	if IsPedSittingInAnyVehicle(playerPed) then
		ESX.ShowNotification(("inside_vehicle"))
		return
	end
	if DoesEntityExist(vehicle) then
		TriggerEvent(Config['Routers']['Notify'], {
			text = '<center><strong class="green-text">กำลังเเงะรถ</strong><center>',
			type = "success",
			timeout = 3000,
			layout = "centerLeft",
			queue = "global"
		})
		Wait(500)
			TriggerEvent("mythic_progbar:client:progress", {
				name = "unique_action_name",
				duration = 20 * 1000,
				label = "กำลังเเงะรถ",
				useWhileDead = false,
				canCancel = false,
				controlDisables = {
					disableMovement = true,
					disableCarMovement = true,
					disableMouse = false,
					disableCombat = true--,
				},
				animation = {
					task = 'WORLD_HUMAN_WELDING',
				}	
			},
			function(status)
				if not status then
					SetVehicleDoorsLocked(vehicle, 1)
					SetVehicleDoorsLockedForAllPlayers(vehicle, false)
					ClearPedTasksImmediately(playerPed)
				end
			end)
	else
		TriggerEvent(Config['Routers']['Notify'], {
			text = '<center><strong class="green-text">ตรงนี้ไม่มีรถ</strong><center>',
			type = "success",
			timeout = 3000,
			layout = "centerLeft",
			queue = "global"
		})
	end
end


function billingmcxx(data)
	local amount = tonumber(value)

	if amount == nil or amount < 0 then
		TriggerEvent(Config['Routers']['Notify'], {
			text = '<center><strong class="green-text">ไม่มีคนอยู่เเถวนี้</strong><center>',
			type = "success",
			timeout = 3000,
			layout = "centerLeft",
			queue = "global"
		})
	else
		local closestPlayer, closestDistance = ESX.Game.GetClosestPlayer()
		if closestPlayer == -1 or closestDistance > 3.0 then
			TriggerEvent(Config['Routers']['Notify'], {
				text = '<center><strong class="green-text">ไม่มีคนอยู่เเถวนี้</strong><center>',
				type = "success",
				timeout = 3000,
				layout = "centerLeft",
				queue = "global"
			})
		else
			menu.close()
			TriggerServerEvent("esx_billing:sendBill",GetPlayerServerId(closestPlayer),"society_mechanic",--[[_U--]]("mechanic"), amount)
		end
	end
end

function xxxxxx()
     ESX.UI.Menu.Open(
		 "dialog",
		 GetCurrentResourceName(),
		 "billing",
		 {
		     title = ("invoice_amount")
		 },
		 function(data, menu)
		     local amount = tonumber(data.value)		
		     if amount == nil or amount < 0 then
		         ESX.ShowNotification(("amount_invalid"))
		     else
		         local closestPlayer, closestDistance = ESX.Game.GetClosestPlayer()
		         if closestPlayer == -1 or closestDistance > 3.0 then
		             ESX.ShowNotification(("no_players_nearby"))
		         else
		             menu.close()
		             TriggerServerEvent("esx_billing:sendBill",GetPlayerServerId(closestPlayer),"society_mechanic", amount)
		         end
		     end
		 end,
		 function(data, menu)
		     menu.close()
		 end)
end


function Blip()
	if Mechanic['Setting']['Blip']['UseBlip'] then
		for _, info in pairs(Mechanic['Setting']['Blip']['Zone']['Pos']) do
			info.blip = AddBlipForCoord(info.x, info.y, info.z)
			SetBlipSprite(info.blip, Mechanic['Setting']['Blip']['BlipSetting']['Sprite'])
			SetBlipDisplay(info.blip, Mechanic['Setting']['Blip']['BlipSetting']['Display'])
			SetBlipScale(info.blip, Mechanic['Setting']['Blip']['BlipSetting']['Scale'])
			SetBlipColour(info.blip, Mechanic['Setting']['Blip']['BlipSetting']['Colour'])
			SetBlipAsShortRange(info.blip, Mechanic['Setting']['Blip']['BlipSetting']['AsShortRange'])
			BeginTextCommandSetBlipName("STRING")
			AddTextComponentString(Mechanic['Setting']['Blip']['BlipName'])
			EndTextCommandSetBlipName(info.blip)
		end
	end
end

function BlipRadius()
	for _,new_zone in pairs(Mechanic['Setting']['Blip']['Zone']['Pos']) do
		print('xxxx')
		local zone = AddBlipForRadius(new_zone.x, new_zone.y, new_zone.z,Mechanic['Setting']['Blip']['Zone']['radius'])
		SetBlipSprite(zone, 9)
		SetBlipAlpha(zone, 100)
		SetBlipColour(zone, Mechanic['Setting']['Blip']['BlipSetting']['Colour'])
	end
end


function setUniform(uniform, playerPed)
	TriggerEvent('skinchanger:getSkin', function(skin)
		local uniformObject
		if skin.sex == 0 then
			uniformObject = Mechanic['Setting']['Uniforms']['InDuty']['male']
		else
			uniformObject = Mechanic['Setting']['Uniforms']['InDuty']['female']
		end
		if uniformObject then
			TriggerEvent("mythic_progbar:client:progress", {
				name = "unique_action_name",
				duration = 5 * 1000,
				label = "กำลังใส่ชุด",
				useWhileDead = false,
				canCancel = false,
				controlDisables = {
					disableMovement = true,
					disableCarMovement = true,
					disableMouse = false,
					disableCombat = true--,
				},
				animation = {
					animDict = "clothingtie",
					anim = "try_tie_positive_a",
				}
			},
			function(status)
				if not status then
					TriggerEvent('skinchanger:loadClothes', skin, uniformObject)
				end
			end)
		else
			TriggerEvent(Config['Routers']['Notify'], {
				text = '<center><strong class="green-text">ไม่มีชุด</strong><center>',
				type = "success",
				timeout = 3000,
				layout = "centerLeft",
				queue = "global"
			})
		end
	end)
end

function getPlayerSkinDF()
	TriggerEvent("mythic_progbar:client:progress", {
		name = "unique_action_name",
		duration = 5 * 1000,
		label = "กำลังถอดชุด",
		useWhileDead = false,
		canCancel = false,
		controlDisables = {
			disableMovement = true,
			disableCarMovement = true,
			disableMouse = false,
			disableCombat = true--,
		},
		animation = {
			animDict = "clothingtie",
			anim = "try_tie_positive_a",
		}
	},
	function(status)
		if not status then
			ESX.TriggerServerCallback('esx_skin:getPlayerSkin', function(skin, jobSkin)
				TriggerEvent('skinchanger:loadSkin', skin)
			end)
		end
	end)
end

function annowXX()
	ESX.UI.Menu.Open(
		"dialog",
		GetCurrentResourceName(),
		"billing",
		{
			title = ("invoice_amount")
		},
		function(data, menu)
			TriggerServerEvent('annow', data.value)
		end,
		function(data, menu)
			menu.close()
		end)
end


