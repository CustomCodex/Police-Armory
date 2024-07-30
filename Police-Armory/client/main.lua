ESX = nil
local PlayerData = {}
local npc
local locale = Config.DefaultLocale

Citizen.CreateThread(function()
    while ESX == nil do
        TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
        Citizen.Wait(0)
    end

    while not ESX.IsPlayerLoaded() do
        Citizen.Wait(10)
    end

    PlayerData = ESX.GetPlayerData()

    -- Set locale based on player preferences or config
    -- Assume you fetch this from player preferences or a config
    locale = Config.DefaultLocale or 'en'

    -- Spawn Police NPC
    RequestModel(Config.ArmoryNPC.model)
    while not HasModelLoaded(Config.ArmoryNPC.model) do
        Citizen.Wait(0)
    end

    npc = CreatePed(4, Config.ArmoryNPC.model, Config.ArmoryNPC.coords.x, Config.ArmoryNPC.coords.y, Config.ArmoryNPC.coords.z, Config.ArmoryNPC.heading, false, true)
    SetEntityInvincible(npc, true)
    SetBlockingOfNonTemporaryEvents(npc, true)
    FreezeEntityPosition(npc, true)

    -- Set Police Clothing
    SetPedComponentVariation(npc, 11, 19, 0, 0) -- Torso
    SetPedComponentVariation(npc, 3, 25, 0, 0) -- Pants
    SetPedComponentVariation(npc, 8, 15, 0, 0) -- Shoes
    SetPedComponentVariation(npc, 6, 25, 0, 0) -- Accessories
    SetPedComponentVariation(npc, 9, 0, 0, 0)  -- Hats
    SetPedPropIndex(npc, 0, 8, 0, 0)          -- Glasses

    -- Add ox_target functionality
    local armoryMenuLabel = (Locales[locale] and Locales[locale]['armory_menu']) or 'Armory Menu'
    local returnWeaponLabel = (Locales[locale] and Locales[locale]['return_weapon']) or 'Return Weapon'
    
    exports.ox_target:addLocalEntity(npc, {
        {
            name = 'armory_menu',
            icon = 'fas fa-warehouse',
            label = armoryMenuLabel,
            onSelect = function()
                OpenArmoryMenu()
            end
        },
        {
            name = 'return_weapon',
            icon = 'fas fa-undo-alt',
            label = returnWeaponLabel,
            onSelect = function()
                OpenReturnWeaponMenu()
            end
        },
        {
            label = "Police Ammunition",
            event = "police-ammo:client:openpoliceammo",
            icon = "fas fa-shop",
        }
    })

    -- Function to draw text in 3D space
    function DrawText3D(x, y, z, text)
        local onScreen, _x, _y = World3dToScreen2d(x, y, z)
        local px, py, pz = table.unpack(GetGameplayCamCoords())
        local dist = Vdist(px, py, pz, x, y, z)
        local scale = (1 / dist) * 2
        local fov = (1 / GetGameplayCamFov()) * 100
        scale = scale * fov
        if onScreen then
            SetTextScale(0.0, 0.35 * scale)
            SetTextFont(4)
            SetTextProportional(1)
            SetTextColour(255, 255, 255, 255)
            SetTextEntry("STRING")
            AddTextComponentString(text)
            DrawText(_x, _y)
        end
    end

    -- Auto-dialogue functionality with faster scrolling
    Citizen.CreateThread(function()
        local dialogue = {
            (Locales[locale] and Locales[locale]['greeting']) or "Hello Officer, you ready to go on duty?",
            (Locales[locale] and Locales[locale]['instruction']) or "Please select your armory.",
            (Locales[locale] and Locales[locale]['safety']) or "Safety first."
        }
        local dialogueIndex = 1
        local displayDelay = 5000 -- Time to display each line (in milliseconds)
        local nextUpdate = GetGameTimer() + displayDelay
        local isDialogueVisible = false
    
        while true do
            Citizen.Wait(0)
    
            local playerPed = PlayerPedId()
            local playerCoords = GetEntityCoords(playerPed)
            local npcCoords = GetEntityCoords(npc)
            local distance = #(playerCoords - npcCoords)
    
            if distance < 5.0 then -- If player is within 5 meters of NPC
                -- Auto-scroll the dialogue
                if GetGameTimer() > nextUpdate then
                    nextUpdate = GetGameTimer() + displayDelay
                    dialogueIndex = dialogueIndex % #dialogue + 1
                end
                
                -- Draw the current dialogue above the NPC with a slight delay
                if not isDialogueVisible then
                    Citizen.Wait(1000) -- Reduced delay before showing the dialogue
                    isDialogueVisible = true
                end
    
                DrawText3D(npcCoords.x, npcCoords.y, npcCoords.z + 1.0, dialogue[dialogueIndex])
            else
                isDialogueVisible = false
            end
        end
    end)    
end)

-- Existing functions
-- Function to get the current locale
function GetLocale()
    return locale
end

-- Function to open the armory menu
function OpenArmoryMenu()
    local locale = GetLocale()  -- Use GetLocale to get the current locale

    -- Fetch localized strings with default fallbacks
    local armoryTitle = (Locales[locale] and Locales[locale]['armory_title']) or 'Armory Menu'
    local returnWeaponLabel = (Locales[locale] and Locales[locale]['return_weapon']) or 'Return Weapon'
    local purchaseSuccessfulMessage = (Locales[locale] and Locales[locale]['purchase_successful']) or 'You have successfully purchased the weapon.'

    ESX.TriggerServerCallback('esx_policejob:getJob', function(job)
        local elements = {}
        local displayedWeapons = {}

        for rank, weapons in pairs(Config.RankWeapons) do
            if rank <= job.grade then
                for _, weapon in ipairs(weapons) do
                    if not displayedWeapons[weapon] then
                        table.insert(elements, {
                            label = ESX.GetWeaponLabel(weapon) .. ' - $' .. Config.WeaponPrices[weapon],
                            value = weapon,
                            price = Config.WeaponPrices[weapon]
                        })
                        displayedWeapons[weapon] = true
                    end
                end
            end
        end

        table.insert(elements, { label = returnWeaponLabel, value = 'return_weapon' })

        ESX.UI.Menu.Open('default', GetCurrentResourceName(), 'armory', {
            title = armoryTitle,
            align = Config.MenuPosition.align,
            elements = elements,
            x = Config.MenuPosition.x,
            y = Config.MenuPosition.y
        }, function(data, menu)
            if data.current.value == 'return_weapon' then
                OpenReturnWeaponMenu()
            else
                TriggerServerEvent('policearmory:buyWeapon', data.current.value, data.current.price)
                ESX.ShowNotification(purchaseSuccessfulMessage)
            end
        end, function(data, menu)
            menu.close()
        end)
    end)
end

-- Function to open the return weapon menu
function OpenReturnWeaponMenu()
    local locale = GetLocale()  -- Use GetLocale to get the current locale

    -- Fetch localized strings with default fallbacks
    local returnWeaponTitle = (Locales[locale] and Locales[locale]['return_weapon_title']) or 'Return Weapon Menu'
    local returnWeaponLabel = (Locales[locale] and Locales[locale]['return_weapon_label']) or 'Return Weapon'
    local returnWeaponSuccessfulMessage = (Locales[locale] and Locales[locale]['return_weapon_successful']) or 'You have returned the weapon.'

    local elements = {}

    -- Get the player's weapons
    ESX.TriggerServerCallback('policearmory:getPlayerWeapons', function(weapons)
        for _, weapon in ipairs(weapons) do
            table.insert(elements, {
                label = ESX.GetWeaponLabel(weapon.name),
                value = weapon.name
            })
        end

        ESX.UI.Menu.Open('default', GetCurrentResourceName(), 'return_weapon', {
            title = returnWeaponTitle,
            align = Config.MenuPosition.align,
            elements = elements,
            x = Config.MenuPosition.x,
            y = Config.MenuPosition.y
        }, function(data, menu)
            TriggerServerEvent('policearmory:returnWeapon', data.current.value)
            ESX.ShowNotification(returnWeaponSuccessfulMessage)
            menu.close()
        end, function(data, menu)
            menu.close()
        end)
    end)
end



AddEventHandler('esx:playerLoaded', function()
    ESX.TriggerServerCallback('esx:getPlayerData', function(playerData)
        PlayerData = playerData
        -- Set locale based on player settings
        ESX.SetLocale(playerData.locale or 'en')
    end)
end)