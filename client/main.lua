ESX = nil
local PlayerData = {}

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

    local npc = CreatePed(4, Config.ArmoryNPC.model, Config.ArmoryNPC.coords.x, Config.ArmoryNPC.coords.y, Config.ArmoryNPC.coords.z, Config.ArmoryNPC.heading, false, true)
    SetEntityInvincible(npc, true)
    SetBlockingOfNonTemporaryEvents(npc, true)
    FreezeEntityPosition(npc, true)

    -- Set Dutch Police Clothing
    SetPedComponentVariation(npc, 11, 19, 0, 0) -- Torso (replace with Dutch police torso ID)
    SetPedComponentVariation(npc, 3, 25, 0, 0) -- Pants (replace with Dutch police pants ID)
    SetPedComponentVariation(npc, 8, 15, 0, 0) -- Shoes (replace with Dutch police shoes ID)
    SetPedComponentVariation(npc, 6, 25, 0, 0) -- Accessories (replace with Dutch police accessories ID)
    SetPedComponentVariation(npc, 9, 0, 0, 0)  -- Hats (replace with Dutch police hats ID)
    SetPedPropIndex(npc, 0, 8, 0, 0)          -- Glasses (replace with Dutch police glasses ID)

    -- Add ox_target functionality
    exports.ox_target:addLocalEntity(npc, {
        {
            name = 'armory_menu',
            icon = 'fas fa-clipboard',
            label = 'Open Wapenkamer',
            onSelect = function()
                OpenArmoryMenu()
            end
        },
        {
            name = 'return_weapon',
            icon = 'fas fa-undo',
            label = 'Wapen Terugbrengen',
            onSelect = function()
                OpenReturnWeaponMenu()
            end
        }
    })
end)

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
            x = Config.MenuPosition.x, -- Center horizontally
            y = Config.MenuPosition.y  -- Position near the top
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
            x = Config.MenuPosition.x, -- Center horizontally
            y = Config.MenuPosition.y  -- Position near the top
        }, function(data, menu)
            TriggerServerEvent('policearmory:returnWeapon', data.current.value)
            menu.close()
        end, function(data, menu)
            menu.close()
        end)
    end)
end
