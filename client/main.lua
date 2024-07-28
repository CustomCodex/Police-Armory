ESX = nil
local PlayerData = {}
local npc


Citizen.CreateThread(function()
    while ESX == nil do
        TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
        Citizen.Wait(0)
    end

    while not ESX.IsPlayerLoaded() do
        Citizen.Wait(10)
    end

    PlayerData = ESX.GetPlayerData()

    -- Spawn Dutch Police NPC
    RequestModel(Config.ArmoryNPC.model)
    while not HasModelLoaded(Config.ArmoryNPC.model) do
        Citizen.Wait(0)
    end

    npc = CreatePed(4, Config.ArmoryNPC.model, Config.ArmoryNPC.coords.x, Config.ArmoryNPC.coords.y, Config.ArmoryNPC.coords.z, Config.ArmoryNPC.heading, false, true)
    SetEntityInvincible(npc, true)
    SetBlockingOfNonTemporaryEvents(npc, true)
    FreezeEntityPosition(npc, true)

    -- Set Dutch Police Clothing
    SetPedComponentVariation(npc, 11, 19, 0, 0) -- Torso
    SetPedComponentVariation(npc, 3, 25, 0, 0) -- Pants
    SetPedComponentVariation(npc, 8, 15, 0, 0) -- Shoes
    SetPedComponentVariation(npc, 6, 25, 0, 0) -- Accessories
    SetPedComponentVariation(npc, 9, 0, 0, 0)  -- Hats
    SetPedPropIndex(npc, 0, 8, 0, 0)          -- Glasses

    -- Add ox_target functionality
    exports.ox_target:addLocalEntity(npc, {
        {
            name = 'armory_menu',
            icon = 'fas fa-warehouse',
            label = 'Wapenkamer',
            onSelect = function()
                OpenArmoryMenu()
            end
        },
        {
            name = 'ammo',
            icon = 'fas fa-bullseye',
            label = 'Verkrijg Munitie',
            onSelect = function()
                GetAmmo()
            end
        },
        {
            name = 'return_weapon',
            icon = 'fas fa-undo-alt',
            label = 'Wapen Terugbrengen',
            onSelect = function()
                OpenReturnWeaponMenu()
            end
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
            "Hello Officer, you ready to go on duty?",
            "Please select your armory.",
            "Safety first."
        }
        local dialogueIndex = 1
        local displayDelay = 5000 -- Time to display each line (in milliseconds) - Shorter delay for faster scrolling
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

function OpenArmoryMenu()
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

        table.insert(elements, { label = 'Wapen Terugbrengen', value = 'return_weapon' })

        ESX.UI.Menu.Open('default', GetCurrentResourceName(), 'armory', {
            title = 'Politie Wapenkamer',
            align = Config.MenuPosition.align,
            elements = elements,
            x = Config.MenuPosition.x,
            y = Config.MenuPosition.y
        }, function(data, menu)
            if data.current.value == 'return_weapon' then
                OpenReturnWeaponMenu()
            else
                TriggerServerEvent('policearmory:buyWeapon', data.current.value, data.current.price)
            end
        end, function(data, menu)
            menu.close()
        end)
    end)
end

function OpenReturnWeaponMenu()
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
            title = 'Wapen Terugbrengen',
            align = Config.MenuPosition.align,
            elements = elements,
            x = Config.MenuPosition.x,
            y = Config.MenuPosition.y
        }, function(data, menu)
            TriggerServerEvent('policearmory:returnWeapon', data.current.value)
            ESX.ShowNotification('Je hebt je wapen ingeleverd.')
            menu.close()
        end, function(data, menu)
            menu.close()
        end)
    end)
end

function GetAmmo()
    -- Define the ammo prices for different types
    local ammoPrices = {
        ['pistol'] = 100,
        ['smg'] = 150,
        ['rifle'] = 200,
        ['shotgun'] = 250,
        ['sniper'] = 300,
        ['heavy'] = 350,
        ['launcher'] = 500,
        ['grenade'] = 50
    }

    -- Define a function to create menu elements for each ammo type
    local function createAmmoElement(ammoType, price)
        return {
            label = ammoType:gsub('^.', string.upper) .. ' Munitie - $' .. price,
            value = ammoType,
            price = price
        }
    end

    -- Generate the list of ammo options
    local ammoTypes = {}
    for ammoType, price in pairs(ammoPrices) do
        table.insert(ammoTypes, createAmmoElement(ammoType, price))
    end

    -- Open the menu for ammo purchasing
    ESX.UI.Menu.Open('default', GetCurrentResourceName(), 'ammo_menu', {
        title = 'Munitie Kopen',
        align = Config.MenuPosition.align,
        elements = ammoTypes,
        x = Config.MenuPosition.x,
        y = Config.MenuPosition.y
    }, function(data, menu)
        TriggerServerEvent('policearmory:buyAmmo', data.current.value, data.current.price)
        ESX.ShowNotification('Je hebt ' .. data.current.label .. ' gekocht.')
        menu.close()
    end, function(data, menu)
        menu.close()
    end)
end
