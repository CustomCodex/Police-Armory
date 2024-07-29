ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

-- Define locales with translations for webhook messages
Config.Locales = {
    en = {
        ['weapon_purchase'] = '**Weapon Purchase Log**\n- **Player:** %s\n- **Steam ID:** %s\n- **FiveM License:** %s\n- **Identifier:** %s\n- **Weapon:** %s\n- **Price:** $%d\n- **Location:** %s\n- **Date and Time:** %s\n- **Job:** %s\n- **Rank:** %s\n- **Server Name:** %s\n\n**Description:** Player %s purchased weapon %s for $%d. Good luck and have a great service!',
        ['weapon_return'] = '**Weapon Return Log**\n- **Player:** %s\n- **Steam ID:** %s\n- **FiveM License:** %s\n- **Identifier:** %s\n- **Weapon:** %s\n- **Location:** %s\n- **Date and Time:** %s\n- **Job:** %s\n- **Rank:** %s\n- **Server Name:** %s\n\n**Description:** Player %s returned weapon %s. We hope you had a good service!',
        ['ammo_purchase'] = '**Ammunition Purchase Log**\n- **Player:** %s\n- **Steam ID:** %s\n- **FiveM License:** %s\n- **Identifier:** %s\n- **Weapon:** %s\n- **Ammunition Type:** %s\n- **Price:** $%d\n- **Location:** %s\n- **Date and Time:** %s\n- **Job:** %s\n- **Rank:** %s\n- **Server Name:** %s\n\n**Description:** Player %s purchased %s ammunition for $%d. Good luck and have a great service!',
    },
    nl = {
        ['weapon_purchase'] = '**Wapen Aankoop Log**\n- **Speler:** %s\n- **Steam ID:** %s\n- **FiveM Licentie:** %s\n- **Identificatie:** %s\n- **Wapen:** %s\n- **Prijs:** $%d\n- **Locatie:** %s\n- **Datum en Tijd:** %s\n- **Rol:** %s\n- **Rang:** %s\n- **Servernaam:** %s\n\n**Beschrijving:** Speler %s heeft wapen %s gekocht voor $%d. Veel succes en een goede dienst!',
        ['weapon_return'] = '**Wapen Terugbreng Log**\n- **Speler:** %s\n- **Steam ID:** %s\n- **FiveM Licentie:** %s\n- **Identificatie:** %s\n- **Wapen:** %s\n- **Locatie:** %s\n- **Datum en Tijd:** %s\n- **Rol:** %s\n- **Rang:** %s\n- **Servernaam:** %s\n\n**Beschrijving:** Speler %s heeft wapen %s teruggebracht. We hopen dat je een goede dienst hebt gehad!',
        ['ammo_purchase'] = '**Ammunitie Aankoop Log**\n- **Speler:** %s\n- **Steam ID:** %s\n- **FiveM Licentie:** %s\n- **Identificatie:** %s\n- **Wapen:** %s\n- **Ammunitie Type:** %s\n- **Prijs:** $%d\n- **Locatie:** %s\n- **Datum en Tijd:** %s\n- **Rol:** %s\n- **Rang:** %s\n- **Servernaam:** %s\n\n**Beschrijving:** Speler %s heeft %s munitie gekocht voor $%d. Veel succes en een goede dienst!',
    },
    de = {
        ['weapon_purchase'] = '**Waffen Kauf Log**\n- **Spieler:** %s\n- **Steam ID:** %s\n- **FiveM Lizenz:** %s\n- **Identifikation:** %s\n- **Waffe:** %s\n- **Preis:** $%d\n- **Ort:** %s\n- **Datum und Uhrzeit:** %s\n- **Job:** %s\n- **Rang:** %s\n- **Servername:** %s\n\n**Beschreibung:** Spieler %s hat Waffe %s für $%d gekauft. Viel Erfolg und einen guten Dienst!',
        ['weapon_return'] = '**Waffen Rückgabe Log**\n- **Spieler:** %s\n- **Steam ID:** %s\n- **FiveM Lizenz:** %s\n- **Identifikation:** %s\n- **Waffe:** %s\n- **Ort:** %s\n- **Datum und Uhrzeit:** %s\n- **Job:** %s\n- **Rang:** %s\n- **Servername:** %s\n\n**Beschreibung:** Spieler %s hat Waffe %s zurückgegeben. Wir hoffen, dass Sie einen guten Dienst hatten!',
        ['ammo_purchase'] = '**Munition Kauf Log**\n- **Spieler:** %s\n- **Steam ID:** %s\n- **FiveM Lizenz:** %s\n- **Identifikation:** %s\n- **Waffe:** %s\n- **Munitionstyp:** %s\n- **Preis:** $%d\n- **Ort:** %s\n- **Datum und Uhrzeit:** %s\n- **Job:** %s\n- **Rang:** %s\n- **Servername:** %s\n\n**Beschreibung:** Spieler %s hat %s Munition für $%d gekauft. Viel Erfolg und einen guten Dienst!',
    },
    fr = {
        ['weapon_purchase'] = '**Journal d\'Achat d\'Arme**\n- **Joueur:** %s\n- **Steam ID:** %s\n- **FiveM Licence:** %s\n- **Identifiant:** %s\n- **Arme:** %s\n- **Prix:** $%d\n- **Emplacement:** %s\n- **Date et Heure:** %s\n- **Job:** %s\n- **Rang:** %s\n- **Nom du Serveur:** %s\n\n**Description:** Le joueur %s a acheté l\'arme %s pour $%d. Bonne chance et bon service!',
        ['weapon_return'] = '**Journal de Retour d\'Arme**\n- **Joueur:** %s\n- **Steam ID:** %s\n- **FiveM Licence:** %s\n- **Identifiant:** %s\n- **Arme:** %s\n- **Emplacement:** %s\n- **Date et Heure:** %s\n- **Job:** %s\n- **Rang:** %s\n- **Nom du Serveur:** %s\n\n**Description:** Le joueur %s a retourné l\'arme %s. Nous espérons que vous avez passé un bon service!',
        ['ammo_purchase'] = '**Journal d\'Achat de Munitions**\n- **Joueur:** %s\n- **Steam ID:** %s\n- **FiveM Licence:** %s\n- **Identifiant:** %s\n- **Arme:** %s\n- **Type de Munitions:** %s\n- **Prix:** $%d\n- **Emplacement:** %s\n- **Date et Heure:** %s\n- **Job:** %s\n- **Rang:** %s\n- **Nom du Serveur:** %s\n\n**Description:** Le joueur %s a acheté des munitions %s pour $%d. Bonne chance et bon service!',
    }
}

-- Function to get localized message
function getLocalizedMessage(lang, key, ...)
    local locale = Config.Locales[lang] or Config.Locales['en']
    local message = locale[key] or key
    return string.format(message, ...)
end

-- Function to send a message to a Discord webhook
local function sendToWebhook(url, lang, key, ...)
    local message = getLocalizedMessage(lang, key, ...)
    PerformHttpRequest(url, function(err, text, headers) end, 'POST', json.encode({content = message}), {['Content-Type'] = 'application/json'})
end


local webhookUrl1 = 'YOURWEBHOOKHERE'  -- Replace with your webhook URL
local webhookUrl2 = 'YOURWEBHOOKHERE'  -- Replace with your webhook URL

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

local function getPlayerLanguage(source)
    local xPlayer = ESX.GetPlayerFromId(source)
    return xPlayer.get('locale') or 'en'  -- Assuming you have a way to get the player's preferred locale
end

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
    local lang = getPlayerLanguage(source)

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
        local messageKey = 'weapon_purchase'
        sendToWebhook(webhookUrl1, lang, messageKey, playerName, steamId, licenseId, identifier, ESX.GetWeaponLabel(weaponName), price, location, time, job, rank, GetConvar('sv_hostname', 'Onbekend'), playerName, ESX.GetWeaponLabel(weaponName), price)
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
    local lang = getPlayerLanguage(source)

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
    local messageKey = 'weapon_return'
    sendToWebhook(webhookUrl2, lang, messageKey, playerName, steamId, licenseId, identifier, ESX.GetWeaponLabel(weaponName), location, time, job, rank, GetConvar('sv_hostname', 'Onbekend'), playerName, ESX.GetWeaponLabel(weaponName))
end)




ESX.RegisterServerCallback('police_armory:purchaseItem', function(source, cb, item)
    local xPlayer = ESX.GetPlayerFromId(source)
    local money = xPlayer.getMoney()

    if money >= item.price then
        xPlayer.removeMoney(Config.ArmoryItems.price)
        xPlayer.addInventoryItem(Config.ArmoryItems.item, 1)
        TriggerClientEvent('esx:showNotification', source, 'Purchase successful!')
        cb(true)
    else
        TriggerClientEvent('esx:showNotification', source, 'Not enough money!')
        cb(false)
    end
end)



--[[RegisterServerEvent('policearmory:buyAmmo')
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

if ammoPrices = pistol then
    exports.ox_inventory:AddItem(source, ammo-9, 100 )
else
    if ammoPrices = smg then 
     exports.ox_inventory:AddItem(source, ammo-45, 100 )


    --    exports.ox_inventory:AddItem(source, ammoItemName, 1, {ammo = 250})

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
        , playerName, steamId, licenseId, identifier, ESX.GetWeaponLabel(weaponName), ammoType, ammoPrice, location, time, job, rank, GetConvar('sv_hostname', 'Onbekend'), playerName, ammoType, ammoPrice)

        sendToWebhook(webhookUrl1, message)
    else
        TriggerClientEvent('esx:showNotification', source, 'Je hebt niet genoeg geld')
    end
end)]]


