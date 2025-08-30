TriggerEvent(Config['Routers']['getSharedObject'], function(obj) ESX = obj end)

RegisterServerEvent('Fixkit:removeItem')
AddEventHandler('Fixkit:removeItem', function(item)
    local _source = source
    local xPlayer = ESX.GetPlayerFromId(_source)
    xPlayer.removeInventoryItem(item, 1)
end)



RegisterServerEvent('annow')
AddEventHandler('annow', function(data)
    if Config['Debug'] then
        print('^7[^3ENTER.UI^7] ^7[^4MECHANIC SCRIP^7] ^7[^3',data,'^7]')
    end
    TriggerClientEvent('chat:addMessage', -1, {
        template = '<div style="padding: 0.5vw; margin: 0.5vw; background-color: RGB(255, 140, 0); border-radius: 3px;"><i class="fas fa-ad"></i>ประกาศจากช่าง:<br> {0}<br></div>',
        args = { data }
    })
end)

-- RegisterCommand('test', function(source)

--     print('xxx')
--     local item = 'bread'
--     xPlayer.addInventoryItem(item, 1)
--     TriggerClientEvent('Nexz_Quest:AddQuest', source, 1, 1)

-- end)