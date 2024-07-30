
local ammo9Prijs = 0 -- Prijs van het item
local ammo9 = 'ammo-9' -- Naam van het item dat de speler krijgt

RegisterNetEvent('police-ammo:pistolammo')
AddEventHandler('police-ammo:pistolammo', function()
    local xPlayer = ESX.GetPlayerFromId(source) -- Zorg ervoor dat je ESX hebt geïnstalleerd
    if xPlayer.getMoney() >= ammo9Prijs then
       -- xPlayer.removeMoney(ammo9Prijs)
        xPlayer.addInventoryItem(ammo9, 100)
        TriggerClientEvent('esx:showNotification', source, 'Je hebt pistol ammo uit de kluis gepakt!')
    else
        TriggerClientEvent('esx:showNotification', source, 'Je hebt niet genoeg geld!')
    end
end)




-- ammo-shotgun

local ammoshotgunPrijs = 0 -- Prijs van het item
local ammoShotgun = 'ammo-shotgun' -- Naam van het item dat de speler krijgt

RegisterNetEvent('police-ammo:shotgunammo')
AddEventHandler('police-ammo:shotgunammo', function()
    local xPlayer = ESX.GetPlayerFromId(source) -- Zorg ervoor dat je ESX hebt geïnstalleerd
    if xPlayer.getMoney() >= ammoshotgunPrijs then
       -- xPlayer.removeMoney(ammo9Prijs)
        xPlayer.addInventoryItem(ammoShotgun, 100)
        TriggerClientEvent('esx:showNotification', source, 'Je hebt shotgun ammo uit de kluis gepakt!')
    else
        TriggerClientEvent('esx:showNotification', source, 'Je hebt niet genoeg geld!')
    end
end)

-- ammo-rifle

local ammoriflePrijs = 0 -- Prijs van het item
local ammorifle = 'ammo-rifle' -- Naam van het item dat de speler krijgt

RegisterNetEvent('police-ammo:rifleammo')
AddEventHandler('police-ammo:rifleammo', function()
    local xPlayer = ESX.GetPlayerFromId(source) -- Zorg ervoor dat je ESX hebt geïnstalleerd
    if xPlayer.getMoney() >= ammoriflePrijs then
       -- xPlayer.removeMoney(ammo9Prijs)
        xPlayer.addInventoryItem(ammorifle, 100)
        TriggerClientEvent('esx:showNotification', source, 'Je hebt rifle ammo uit de kluis gepakt!')
    else
        TriggerClientEvent('esx:showNotification', source, 'Je hebt niet genoeg geld!')
    end
end)

local ammosmgPrijs = 0 -- Prijs van het item
local ammosmg = 'ammo-45' -- Naam van het item dat de speler krijgt

RegisterNetEvent('police-ammo:ammosmg')
AddEventHandler('police-ammo:ammosmg', function()
    local xPlayer = ESX.GetPlayerFromId(source) -- Zorg ervoor dat je ESX hebt geïnstalleerd
    if xPlayer.getMoney() >= ammosmgPrijs then
       -- xPlayer.removeMoney(ammo9Prijs)
        xPlayer.addInventoryItem(ammosmg, 100)
        TriggerClientEvent('esx:showNotification', source, 'Je hebt smg ammo uit de kluis gepakt!')
    else
        TriggerClientEvent('esx:showNotification', source, 'Je hebt niet genoeg geld!')
    end
end)
