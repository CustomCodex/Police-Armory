ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

local webhookUrl1 = 'YOURWEBHOOKHERE'  -- Replace with your webhook URL
local webhookUrl2 = 'YOURWEBHOOKHERE'  -- Replace with your webhook URL

-- Function to send a message to a Discord webhook
local function sendToWebhook(url, message)
    PerformHttpRequest(url, function(err, text, headers) end, 'POST', json.encode({content = message}), {['Content-Type'] = 'application/json'})
end

-- Function to get the current time and date in Dutch
local function getCurrentTimeInDutch()
    return os.date('%d-%m-%Y %H:%M:%S') -- Format: DD-MM-YYYY HH:MM:SS
end

-- Function to get player location
local function getPlayerLocation(playerId)
    local playerPed = GetPlayerPed(playerId)
    local coords = GetEntityCoords(playerPed)
    return string.format('X: %.2f, Y: %.2f, Z: %.2f', coords.x, coords.y, coords.z)
end

-- Function to get player rank (assuming rank is stored in job.grade)
local function getPlayerRank(xPlayer)
    return xPlayer.job.grade_label or "Onbekend"
end

-- Function to get the Steam ID of the player
local function getSteamId(source)
    local identifiers = GetPlayerIdentifiers(source)
    for _, id in ipairs(identifiers) do
        if string.sub(id, 1, 6) == "steam:" then
            return id
        end
    end
    return "Onbekend"
end

-- Function to get the FiveM license of the player
local function getFiveMLicense(source)
    local identifiers = GetPlayerIdentifiers(source)
    for _, id in ipairs(identifiers) do
        if string.sub(id, 1, 7) == "license:" then
            return id
        end
    end
    return "Onbekend"
end

-- Function to get the in-game player name
local function getInGamePlayerName(source)
    return GetPlayerName(source) or "Onbekend"
end

ESX.RegisterServerCallback('esx_policejob:getJob', function(source, cb)
    local xPlayer = ESX.GetPlayerFromId(source)
    cb(xPlayer.job)
end)

ESX.RegisterServerCallback('policearmory:getPlayerWeapons', function(source, cb)
    local xPlayer = ESX.GetPlayerFromId(source)
    local weapons = {}

    -- Fetch weapons from the user's loadout
    for _, weapon in ipairs(xPlayer.loadout) do
        table.insert(weapons, { name = weapon.name })
    end

    -- Optionally fetch from the user_weapons table if needed
    MySQL.Async.fetchAll('SELECT weapon FROM user_weapons WHERE identifier = @identifier AND owned = true', {
        ['@identifier'] = xPlayer.getIdentifier()
    }, function(result)
        for _, row in ipairs(result) do
            table.insert(weapons, { name = row.weapon })
        end
        cb(weapons)
    end)
end)

RegisterServerEvent('policearmory:buyWeapon')
AddEventHandler('policearmory:buyWeapon', function(weaponName, price)
    local xPlayer = ESX.GetPlayerFromId(source)
    local money = xPlayer.getMoney()
    local identifier = xPlayer.getIdentifier()
    local playerName = getInGamePlayerName(source)
    local steamId = getSteamId(source)
    local licenseId = getFiveMLicense(source)
    local location = getPlayerLocation(source)
    local time = getCurrentTimeInDutch()
    local job = xPlayer.job.label
    local rank = getPlayerRank(xPlayer)

    if money >= price then
        xPlayer.removeMoney(price)
        exports.ox_inventory:AddItem(source, weaponName, 1, { ammo = 250 })

        MySQL.Async.execute('INSERT INTO user_weapons (identifier, weapon, ammo, components) VALUES (@identifier, @weapon, @ammo, @components) ON DUPLICATE KEY UPDATE ammo = @ammo, components = @components', {
            ['@identifier'] = identifier,
            ['@weapon'] = weaponName,
            ['@ammo'] = 250,
            ['@components'] = json.encode({})
        })

        -- Notify the player
        TriggerClientEvent('esx:showNotification', source, 'Je hebt een ' .. ESX.GetWeaponLabel(weaponName) .. ' gekocht voor $' .. price)

        -- Send message to Discord webhook
        local message = string.format([[
**Wapen Aankoop Log**
- **Speler:** %s
- **Steam ID:** %s
- **FiveM Licentie:** %s
- **Identificatie:** %s
- **Wapen:** %s
- **Prijs:** $%d
- **Locatie:** %s
- **Datum en Tijd:** %s
- **Rol:** %s
- **Rang:** %s
- **Servernaam:** %s

**Beschrijving:** Speler %s heeft een wapen gekocht: %s voor $%d. Veel succes en een goede dienst!
        ]], playerName, steamId, licenseId, identifier, ESX.GetWeaponLabel(weaponName), price, location, time, job, rank, GetConvar('sv_hostname', 'Onbekend'), playerName, ESX.GetWeaponLabel(weaponName), price)

        sendToWebhook(webhookUrl1, message)
    else
        TriggerClientEvent('esx:showNotification', source, 'Je hebt niet genoeg geld')
    end
end)

RegisterServerEvent('policearmory:returnWeapon')
AddEventHandler('policearmory:returnWeapon', function(weaponName)
    local xPlayer = ESX.GetPlayerFromId(source)
    local identifier = xPlayer.getIdentifier()
    local playerName = getInGamePlayerName(source)
    local steamId = getSteamId(source)
    local licenseId = getFiveMLicense(source)
    local location = getPlayerLocation(source)
    local time = getCurrentTimeInDutch()
    local job = xPlayer.job.label
    local rank = getPlayerRank(xPlayer)

    -- Remove weapon from the player's inventory
    exports.ox_inventory:RemoveItem(source, weaponName, 1)

    -- Remove weapon from user_weapons table
    MySQL.Async.execute('DELETE FROM user_weapons WHERE identifier = @identifier AND weapon = @weapon', {
        ['@identifier'] = identifier,
        ['@weapon'] = weaponName
    })

    -- Add weapon to police_armory database
    MySQL.Async.execute('INSERT INTO police_armory (weapon, owner) VALUES (@weapon, @owner)', {
        ['@weapon'] = weaponName,
        ['@owner'] = identifier
    })

    -- Notify the player
    TriggerClientEvent('esx:showNotification', source, 'Je hebt een ' .. ESX.GetWeaponLabel(weaponName) .. ' teruggebracht')

    -- Send message to Discord webhook
    local message = string.format([[
**Wapen Terugbreng Log**
- **Speler:** %s
- **Steam ID:** %s
- **FiveM Licentie:** %s
- **Identificatie:** %s
- **Wapen:** %s
- **Locatie:** %s
- **Datum en Tijd:** %s
- **Rol:** %s
- **Rang:** %s
- **Servernaam:** %s

**Beschrijving:** Speler %s heeft een wapen teruggebracht: %s. We hopen dat je een goede dienst hebt gehad!
    ]], playerName, steamId, licenseId, identifier, ESX.GetWeaponLabel(weaponName), location, time, job, rank, GetConvar('sv_hostname', 'Onbekend'), playerName, ESX.GetWeaponLabel(weaponName))

    sendToWebhook(webhookUrl2, message)
end)

RegisterServerEvent('policearmory:buyAmmo')
AddEventHandler('policearmory:buyAmmo', function(weaponName, ammoType, ammoPrice)
    local xPlayer = ESX.GetPlayerFromId(source)
    local money = xPlayer.getMoney()
    local identifier = xPlayer.getIdentifier()
    local playerName = getInGamePlayerName(source)
    local steamId = getSteamId(source)
    local licenseId = getFiveMLicense(source)
    local location = getPlayerLocation(source)
    local time = getCurrentTimeInDutch()
    local job = xPlayer.job.label
    local rank = getPlayerRank(xPlayer)

    if money >= ammoPrice then
        xPlayer.removeMoney(ammoPrice)

        -- Add ammo to the player's inventory
        local ammoItemName = weaponName .. '_ammo'
        exports.ox_inventory:AddItem(source, ammoItemName, 1, {ammo = 250})

        -- Notify the player
        TriggerClientEvent('esx:showNotification', source, 'Je hebt ' .. ammoType .. ' gekocht voor $' .. ammoPrice)

        -- Send message to Discord webhook
        local message = string.format([[
**Ammunitie Aankoop Log**
- **Speler:** %s
- **Steam ID:** %s
- **FiveM Licentie:** %s
- **Identificatie:** %s
- **Wapen:** %s
- **Ammunitie Type:** %s
- **Prijs:** $%d
- **Locatie:** %s
- **Datum en Tijd:** %s
- **Rol:** %s
- **Rang:** %s
- **Servernaam:** %s

**Beschrijving:** Speler %s heeft %s gekocht voor $%d. Veel succes en een goede dienst!
        ]], playerName, steamId, licenseId, identifier, ESX.GetWeaponLabel(weaponName), ammoType, ammoPrice, location, time, job, rank, GetConvar('sv_hostname', 'Onbekend'), playerName, ammoType, ammoPrice)

        sendToWebhook(webhookUrl1, message)
    else
        TriggerClientEvent('esx:showNotification', source, 'Je hebt niet genoeg geld')
    end
end)


