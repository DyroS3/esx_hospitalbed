ESX = nil
TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

RegisterServerEvent('esx_hospitalbed:gethelp')
AddEventHandler('esx_hospitalbed:gethelp', function(hospital)
    local src = source
    local xPlayer = ESX.GetPlayerFromId(src)
    local allowed = false
    if not Config.Hospitals[hospital].Bed.occupied then
        if xPlayer.getMoney() >= Config.Price then
            xPlayer.removeMoney(Config.Price)
            allowed = true
        elseif xPlayer.getAccount('bank').money >= Config.Price then
            allowed = true
            xPlayer.removeAccountMoney('bank', Config.Price)
        else
            TriggerClientEvent('esx_hospitalbed:notify', src, Strings['not_enough'])
        end
        if allowed then
            TriggerClientEvent('esx_hospitalbed:revive', src, hospital)
            Config.Hospitals[hospital].Bed.occupied = true
            Wait(Config.ReviveTime * 1000)
            Config.Hospitals[hospital].Bed.occupied = false
        end
    else
        TriggerClientEvent('esx_hospitalbed:notify', src, Strings['occupied'])
    end
end)