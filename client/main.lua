ESX = nil
local PlayerData = {}
local npc
local locale = Config.DefaultLocale or 'en'

Citizen.CreateThread(function()
    -- Wait until ESX is initialized
    while ESX == nil do
        TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
        Citizen.Wait(0)
    end

    -- Wait until the player data is loaded
    while not ESX.IsPlayerLoaded() do
        Citizen.Wait(10)
    end

    PlayerData = ESX.GetPlayerData()
    locale = Config.DefaultLocale or 'en'

    -- Function to load the NPC model
    local function loadModel(model)
        RequestModel(model)
        while not HasModelLoaded(model) do
            Citizen.Wait(500)
        end
    end

    -- Function to create the Armory NPC
    local function createArmoryNPC()
        local model = Config.ArmoryNPC.model
        local coords = Config.ArmoryNPC.coords
        local heading = Config.ArmoryNPC.heading

        -- Validate Config settings
        if not model or not coords or not coords.x or not coords.y or not coords.z then
            print("NPC model or coordinates are not set correctly in Config.")
            return
        end

        -- Load the model
        loadModel(model)

        -- Create the NPC
        npc = CreatePed(4, model, coords.x, coords.y, coords.z, heading, false, true)

        if npc then
            print("NPC created successfully at coordinates: x: " .. coords.x .. ", y: " .. coords.y .. ", z: " .. coords.z)
        else
            print("Failed to create NPC.")
            return
        end

        -- Verify NPC creation and set properties
        local npcCoords = GetEntityCoords(npc)
        print(("NPC coordinates: x: %s, y: %s, z: %s"):format(npcCoords.x, npcCoords.y, npcCoords.z))

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
        
        if exports.ox_target then
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
                }
            })
        else
            print("ox_target not found or not working.")
        end
    end

    -- Create the Armory NPC
    createArmoryNPC()

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
            local distance = #(vector3(playerCoords.x, playerCoords.y, playerCoords.z) - vector3(npcCoords.x, npcCoords.y, npcCoords.z))
    
            if distance < 5.0 then -- If player is within 5 meters of NPC
                -- Auto-scroll the dialogue
                if GetGameTimer() > nextUpdate then
                    nextUpdate = GetGameTimer() + displayDelay
                    dialogueIndex = (dialogueIndex % #dialogue) + 1
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

-- Function to open the armory menu
function OpenArmoryMenu()
    local locale = GetLocale()  -- Use GetLocale to get the current locale
    local armoryTitle = (Locales[locale] and Locales[locale]['armory_title']) or 'Armory'
    -- Implement the actual menu logic here
end

-- Function to open the return weapon menu
function OpenReturnWeaponMenu()
    local locale = GetLocale()  -- Use GetLocale to get the current locale
    local returnWeaponTitle = (Locales[locale] and Locales[locale]['return_weapon_title']) or 'Return Weapon'
    -- Implement the actual menu logic here
end
