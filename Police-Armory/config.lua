Config = {}

-- ASCII Art for Custom Code
Config.CustomCodeArt = [[
   ___              _                        ___             _             
  / __\ _   _  ___ | |_   ___   _ __ ___    / __\  ___    __| |  ___ __  __
 / /   | | | |/ __|| __| / _ \ | '_ ` _ \  / /    / _ \  / _` | / _ \\ \/ /
/ /___ | |_| |\__ \| |_ | (_) || | | | | |/ /___ | (_) || (_| ||  __/ >  < 
\____/  \__,_||___/ \__| \___/ |_| |_| |_|\____/  \___/  \__,_| \___|/_/\_\
]]

-- Function to Print the Custom Code Art
function printCustomCodeArt()
    print(Config.CustomCodeArt)
end

-- Call the function to display the ASCII art
printCustomCodeArt()

-- Display GitHub Link
print("Visit us at: https://github.com/CustomCodex")


Config.DefaultLocale = 'en'

Config.ArmoryNPC = {
    model = 's_m_y_cop_01', -- Replace with your NPC model vector3
    coords = {x = 438.00094604492, y = -988.02014160156, z = 33.297328948975}, -- Replace with desired coordinates
    heading = -30.0 -- Replace with desired heading
}

-- Weapon prices
Config.WeaponPrices = {
    ['WEAPON_FLASHLIGHT'] = 0,
    ['WEAPON_STUNGUN'] = 0,
    ['WEAPON_COMBATPISTOL'] = 0,
    ['WEAPON_PUMPSHOTGUN'] = 0,
    ['WEAPON_CARBINERIFLE'] = 0,
    ['WEAPON_SMG'] = 0,
    ['WEAPON_CARBINERIFLE_MK2'] = 0,
    ['WEAPON_HEAVYSNIPER'] = 0,
    ['WEAPON_SPECIALCARBINE_MK2'] = 0,
    ['WEAPON_BULLPUPRIFLE_MK2'] = 0,
    ['WEAPON_HEAVYSNIPER_MK2'] = 0,
    ['WEAPON_COMBATMG_MK2'] = 0,
    ['WEAPON_MARKSMANRIFLE_MK2'] = 0,
    ['WEAPON_SMG_MK2'] = 0,
    ['WEAPON_NIGHTSTICK'] = 0,
    ['WEAPON_PISTOL'] = 0,
    ['WEAPON_APPISTOL'] = 0,
    ['WEAPON_FLAREGUN'] = 0,
    ['WEAPON_HEAVYPISTOL'] = 0,
    ['WEAPON_MARKSMANPISTOL'] = 0,
    ['WEAPON_REVOLVER'] = 0,
    ['WEAPON_DOUBLEACTION'] = 0,
    ['WEAPON_GADGETPISTOL'] = 0,
    ['WEAPON_MACHINEPISTOL'] = 0,
    ['WEAPON_MINISMG'] = 0,
    ['WEAPON_ASSAULTRIFLE'] = 0,
    ['WEAPON_ASSAULTRIFLE_MK2'] = 0,
    ['WEAPON_COMBATPDW'] = 0,
    ['WEAPON_MG'] = 0,
    ['WEAPON_COMBATMG'] = 0,
    ['WEAPON_GUSENBERG'] = 0,
    ['WEAPON_HOMINGLAUNCHER'] = 0,
    ['WEAPON_RPG'] = 0,
    ['WEAPON_GRENADELAUNCHER'] = 0,
    ['WEAPON_GRENADELAUNCHER_SMOKE'] = 0,
    ['WEAPON_FIREWORK'] = 0,
    ['WEAPON_RAILGUN'] = 0,
    ['WEAPON_DBSHOTGUN'] = 0,
    ['WEAPON_AUTOSHOTGUN'] = 0,
    ['WEAPON_BULLPUPSHOTGUN'] = 0,
    ['WEAPON_SAWNOFFSHOTGUN'] = 0,
    ['WEAPON_MILITARYRIFLE'] = 0,
    ['WEAPON_TACTICALRIFLE'] = 0,
    ['WEAPON_GRENADES'] = 0,
    ['WEAPON_SMOKEGRENADE'] = 0,
    ['WEAPON_MOLOTOV'] = 0,
    ['WEAPON_STICKYBOMB'] = 0,
    ['WEAPON_PROXIMITYMINE'] = 0,
    ['WEAPON_SNOWBALL'] = 0,
    ['WEAPON_FLARE'] = 0
}

-- Weapon attachments
Config.Attachments = {
    ['WEAPON_FLASHLIGHT'] = {
        ['flashlight'] = 0
    },
    ['WEAPON_STUNGUN'] = {},  -- Stun Gun has no attachments
    ['WEAPON_COMBATPISTOL'] = {
        ['flashlight'] = 0,
        ['suppressor'] = 0,
        ['extendedmag'] = 0,
        ['grip'] = 0
    },
    ['WEAPON_PUMPSHOTGUN'] = {
        ['extendedmag'] = 0,
        ['suppressor'] = 0
    },
    ['WEAPON_CARBINERIFLE'] = {
        ['scope'] = 0,
        ['suppressor'] = 0,
        ['extendedmag'] = 0,
        ['grip'] = 0
    },
    ['WEAPON_SMG'] = {
        ['scope'] = 0,
        ['suppressor'] = 0,
        ['extendedmag'] = 0,
        ['grip'] = 0
    },
    ['WEAPON_CARBINERIFLE_MK2'] = {
        ['scope'] = 0,
        ['suppressor'] = 0,
        ['extendedmag'] = 0,
        ['grip'] = 0,
        ['flashlight'] = 0
    },
    ['WEAPON_HEAVYSNIPER'] = {
        ['scope'] = 0,
        ['extendedmag'] = 0
    },
    ['WEAPON_SPECIALCARBINE_MK2'] = {
        ['scope'] = 0,
        ['suppressor'] = 0,
        ['extendedmag'] = 0,
        ['grip'] = 0,
        ['flashlight'] = 0
    },
    ['WEAPON_BULLPUPRIFLE_MK2'] = {
        ['scope'] = 0,
        ['suppressor'] = 0,
        ['extendedmag'] = 0,
        ['grip'] = 0,
        ['flashlight'] = 0
    },
    ['WEAPON_HEAVYSNIPER_MK2'] = {
        ['scope'] = 0,
        ['extendedmag'] = 0
    },
    ['WEAPON_COMBATMG_MK2'] = {
        ['scope'] = 0,
        ['suppressor'] = 0,
        ['extendedmag'] = 0,
        ['grip'] = 0,
        ['flashlight'] = 0
    },
    ['WEAPON_MARKSMANRIFLE_MK2'] = {
        ['scope'] = 0,
        ['suppressor'] = 0,
        ['extendedmag'] = 0,
        ['grip'] = 0,
        ['flashlight'] = 0
    },
    ['WEAPON_SMG_MK2'] = {
        ['scope'] = 0,
        ['suppressor'] = 0,
        ['extendedmag'] = 0,
        ['grip'] = 0,
        ['flashlight'] = 0
    },
    ['WEAPON_NIGHTSTICK'] = {},
    ['WEAPON_PISTOL'] = {
        ['flashlight'] = 0,
        ['suppressor'] = 0,
        ['extendedmag'] = 0,
        ['grip'] = 0
    },
    ['WEAPON_APPISTOL'] = {
        ['flashlight'] = 0,
        ['suppressor'] = 0,
        ['extendedmag'] = 0
    },
    ['WEAPON_FLAREGUN'] = {},
    ['WEAPON_HEAVYPISTOL'] = {
        ['flashlight'] = 0,
        ['suppressor'] = 0,
        ['extendedmag'] = 0
    },
    ['WEAPON_MARKSMANPISTOL'] = {
        ['flashlight'] = 0,
        ['suppressor'] = 0,
        ['extendedmag'] = 0
    },
    ['WEAPON_REVOLVER'] = {
        ['flashlight'] = 0,
        ['suppressor'] = 0,
        ['extendedmag'] = 0
    },
    ['WEAPON_DOUBLEACTION'] = {
        ['flashlight'] = 0,
        ['suppressor'] = 0,
        ['extendedmag'] = 0
    },
    ['WEAPON_GADGETPISTOL'] = {},
    ['WEAPON_MACHINEPISTOL'] = {
        ['suppressor'] = 0,
        ['extendedmag'] = 0
    },
    ['WEAPON_MINISMG'] = {
        ['suppressor'] = 0,
        ['extendedmag'] = 0
    },
    ['WEAPON_ASSAULTRIFLE'] = {
        ['scope'] = 0,
        ['suppressor'] = 0,
        ['extendedmag'] = 0,
        ['grip'] = 0
    },
    ['WEAPON_ASSAULTRIFLE_MK2'] = {
        ['scope'] = 0,
        ['suppressor'] = 0,
        ['extendedmag'] = 0,
        ['grip'] = 0,
        ['flashlight'] = 0
    },
    ['WEAPON_COMBATPDW'] = {
        ['scope'] = 0,
        ['suppressor'] = 0,
        ['extendedmag'] = 0
    },
    ['WEAPON_MG'] = {
        ['scope'] = 0,
        ['suppressor'] = 0,
        ['extendedmag'] = 0
    },
    ['WEAPON_COMBATMG'] = {
        ['scope'] = 0,
        ['suppressor'] = 0,
        ['extendedmag'] = 0
    },
    ['WEAPON_GUSENBERG'] = {},
    ['WEAPON_HOMINGLAUNCHER'] = {},
    ['WEAPON_RPG'] = {},
    ['WEAPON_GRENADELAUNCHER'] = {},
    ['WEAPON_GRENADELAUNCHER_SMOKE'] = {},
    ['WEAPON_FIREWORK'] = {},
    ['WEAPON_RAILGUN'] = {},
    ['WEAPON_DBSHOTGUN'] = {
        ['extendedmag'] = 0
    },
    ['WEAPON_AUTOSHOTGUN'] = {
        ['extendedmag'] = 0
    },
    ['WEAPON_BULLPUPSHOTGUN'] = {
        ['extendedmag'] = 0
    },
    ['WEAPON_SAWNOFFSHOTGUN'] = {},
    ['WEAPON_MILITARYRIFLE'] = {
        ['scope'] = 0,
        ['suppressor'] = 0,
        ['extendedmag'] = 0
    },
    ['WEAPON_TACTICALRIFLE'] = {
        ['scope'] = 0,
        ['suppressor'] = 0,
        ['extendedmag'] = 0
    },
}

-- Rank weapons
Config.RankWeapons = {
    [0] = {'WEAPON_FLASHLIGHT', 'WEAPON_STUNGUN', 'WEAPON_COMBATPISTOL', 'WEAPON_NIGHTSTICK', 'WEAPON_PUMPSHOTGUN', 'WEAPON_CARBINERIFLE', 'WEAPON_SMG', 'WEAPON_CARBINERIFLE_MK2', 'WEAPON_HEAVYSNIPER', 'WEAPON_SPECIALCARBINE_MK2', 'WEAPON_BULLPUPRIFLE_MK2', 'WEAPON_HEAVYSNIPER_MK2', 'WEAPON_COMBATMG_MK2', 'WEAPON_MARKSMANRIFLE_MK2', 'WEAPON_SMG_MK2'},
    [1] = {'WEAPON_FLASHLIGHT', 'WEAPON_STUNGUN', 'WEAPON_COMBATPISTOL', 'WEAPON_NIGHTSTICK', 'WEAPON_PUMPSHOTGUN', 'WEAPON_CARBINERIFLE', 'WEAPON_SMG', 'WEAPON_CARBINERIFLE_MK2', 'WEAPON_HEAVYSNIPER', 'WEAPON_SPECIALCARBINE_MK2', 'WEAPON_BULLPUPRIFLE_MK2', 'WEAPON_HEAVYSNIPER_MK2', 'WEAPON_COMBATMG_MK2', 'WEAPON_MARKSMANRIFLE_MK2', 'WEAPON_SMG_MK2'},
    [2] = {'WEAPON_FLASHLIGHT', 'WEAPON_STUNGUN', 'WEAPON_COMBATPISTOL', 'WEAPON_NIGHTSTICK', 'WEAPON_PUMPSHOTGUN', 'WEAPON_CARBINERIFLE', 'WEAPON_SMG', 'WEAPON_CARBINERIFLE_MK2', 'WEAPON_HEAVYSNIPER', 'WEAPON_SPECIALCARBINE_MK2', 'WEAPON_BULLPUPRIFLE_MK2', 'WEAPON_HEAVYSNIPER_MK2', 'WEAPON_COMBATMG_MK2', 'WEAPON_MARKSMANRIFLE_MK2', 'WEAPON_SMG_MK2'},
    [3] = {'WEAPON_FLASHLIGHT', 'WEAPON_STUNGUN', 'WEAPON_COMBATPISTOL', 'WEAPON_NIGHTSTICK', 'WEAPON_PUMPSHOTGUN', 'WEAPON_CARBINERIFLE', 'WEAPON_SMG', 'WEAPON_CARBINERIFLE_MK2', 'WEAPON_HEAVYSNIPER', 'WEAPON_SPECIALCARBINE_MK2', 'WEAPON_BULLPUPRIFLE_MK2', 'WEAPON_HEAVYSNIPER_MK2', 'WEAPON_COMBATMG_MK2', 'WEAPON_MARKSMANRIFLE_MK2', 'WEAPON_SMG_MK2'},
    [4] = {'WEAPON_FLASHLIGHT', 'WEAPON_STUNGUN', 'WEAPON_COMBATPISTOL', 'WEAPON_NIGHTSTICK', 'WEAPON_PUMPSHOTGUN', 'WEAPON_CARBINERIFLE', 'WEAPON_SMG', 'WEAPON_CARBINERIFLE_MK2', 'WEAPON_HEAVYSNIPER', 'WEAPON_SPECIALCARBINE_MK2', 'WEAPON_BULLPUPRIFLE_MK2', 'WEAPON_HEAVYSNIPER_MK2', 'WEAPON_COMBATMG_MK2', 'WEAPON_MARKSMANRIFLE_MK2', 'WEAPON_SMG_MK2'},
    [5] = {'WEAPON_FLASHLIGHT', 'WEAPON_STUNGUN', 'WEAPON_COMBATPISTOL', 'WEAPON_NIGHTSTICK', 'WEAPON_PUMPSHOTGUN', 'WEAPON_CARBINERIFLE', 'WEAPON_SMG', 'WEAPON_CARBINERIFLE_MK2', 'WEAPON_HEAVYSNIPER', 'WEAPON_SPECIALCARBINE_MK2', 'WEAPON_BULLPUPRIFLE_MK2', 'WEAPON_HEAVYSNIPER_MK2', 'WEAPON_COMBATMG_MK2', 'WEAPON_MARKSMANRIFLE_MK2', 'WEAPON_SMG_MK2'},
    [6] = {'WEAPON_FLASHLIGHT', 'WEAPON_STUNGUN', 'WEAPON_COMBATPISTOL', 'WEAPON_NIGHTSTICK', 'WEAPON_PUMPSHOTGUN', 'WEAPON_CARBINERIFLE', 'WEAPON_SMG', 'WEAPON_CARBINERIFLE_MK2', 'WEAPON_HEAVYSNIPER', 'WEAPON_SPECIALCARBINE_MK2', 'WEAPON_BULLPUPRIFLE_MK2', 'WEAPON_HEAVYSNIPER_MK2', 'WEAPON_COMBATMG_MK2', 'WEAPON_MARKSMANRIFLE_MK2', 'WEAPON_SMG_MK2'},
    [7] = {'WEAPON_FLASHLIGHT', 'WEAPON_STUNGUN', 'WEAPON_COMBATPISTOL', 'WEAPON_NIGHTSTICK', 'WEAPON_PUMPSHOTGUN', 'WEAPON_CARBINERIFLE', 'WEAPON_SMG', 'WEAPON_CARBINERIFLE_MK2', 'WEAPON_HEAVYSNIPER', 'WEAPON_SPECIALCARBINE_MK2', 'WEAPON_BULLPUPRIFLE_MK2', 'WEAPON_HEAVYSNIPER_MK2', 'WEAPON_COMBATMG_MK2', 'WEAPON_MARKSMANRIFLE_MK2', 'WEAPON_SMG_MK2'},
    [8] = {'WEAPON_FLASHLIGHT', 'WEAPON_STUNGUN', 'WEAPON_COMBATPISTOL', 'WEAPON_NIGHTSTICK', 'WEAPON_PUMPSHOTGUN', 'WEAPON_CARBINERIFLE', 'WEAPON_SMG', 'WEAPON_CARBINERIFLE_MK2', 'WEAPON_HEAVYSNIPER', 'WEAPON_SPECIALCARBINE_MK2', 'WEAPON_BULLPUPRIFLE_MK2', 'WEAPON_HEAVYSNIPER_MK2', 'WEAPON_COMBATMG_MK2', 'WEAPON_MARKSMANRIFLE_MK2', 'WEAPON_SMG_MK2'},
    [9] = {'WEAPON_FLASHLIGHT', 'WEAPON_STUNGUN', 'WEAPON_COMBATPISTOL', 'WEAPON_NIGHTSTICK', 'WEAPON_PUMPSHOTGUN', 'WEAPON_CARBINERIFLE', 'WEAPON_SMG', 'WEAPON_CARBINERIFLE_MK2', 'WEAPON_HEAVYSNIPER', 'WEAPON_SPECIALCARBINE_MK2', 'WEAPON_BULLPUPRIFLE_MK2', 'WEAPON_HEAVYSNIPER_MK2', 'WEAPON_COMBATMG_MK2', 'WEAPON_MARKSMANRIFLE_MK2', 'WEAPON_SMG_MK2'}
}

-- Ammo prices configuration
Config.AmmoPrices = {
    ['WEAPON_FLASHLIGHT'] = 0,
    ['WEAPON_STUNGUN'] = 0,
    ['WEAPON_COMBATPISTOL'] = 0,
    ['WEAPON_PUMPSHOTGUN'] = 0,
    ['WEAPON_CARBINERIFLE'] = 0,
    ['WEAPON_SMG'] = 0,
    ['WEAPON_CARBINERIFLE_MK2'] = 0,
    ['WEAPON_HEAVYSNIPER'] = 0,
    ['WEAPON_SPECIALCARBINE_MK2'] = 0,
    ['WEAPON_BULLPUPRIFLE_MK2'] = 0,
    ['WEAPON_HEAVYSNIPER_MK2'] = 0,
    ['WEAPON_COMBATMG_MK2'] = 0,
    ['WEAPON_MARKSMANRIFLE_MK2'] = 0,
    ['WEAPON_SMG_MK2'] = 0,
    ['WEAPON_NIGHTSTICK'] = 0,
    ['WEAPON_PISTOL'] = 100, -- Example price
    ['WEAPON_APPISTOL'] = 100, -- Example price
    ['WEAPON_FLAREGUN'] = 0,
    ['WEAPON_HEAVYPISTOL'] = 150, -- Example price
    ['WEAPON_MARKSMANPISTOL'] = 150, -- Example price
    ['WEAPON_REVOLVER'] = 200, -- Example price
    ['WEAPON_DOUBLEACTION'] = 200, -- Example price
    ['WEAPON_GADGETPISTOL'] = 200, -- Example price
    ['WEAPON_MACHINEPISTOL'] = 200, -- Example price
    ['WEAPON_MINISMG'] = 250, -- Example price
    ['WEAPON_ASSAULTRIFLE'] = 300, -- Example price
    ['WEAPON_ASSAULTRIFLE_MK2'] = 300, -- Example price
    ['WEAPON_COMBATPDW'] = 300, -- Example price
    ['WEAPON_MG'] = 350, -- Example price
    ['WEAPON_COMBATMG'] = 350, -- Example price
    ['WEAPON_GUSENBERG'] = 400, -- Example price
    ['WEAPON_HOMINGLAUNCHER'] = 500, -- Example price
    ['WEAPON_RPG'] = 500, -- Example price
    ['WEAPON_GRENADELAUNCHER'] = 500, -- Example price
    ['WEAPON_GRENADELAUNCHER_SMOKE'] = 500, -- Example price
    ['WEAPON_FIREWORK'] = 0,
    ['WEAPON_RAILGUN'] = 600, -- Example price
    ['WEAPON_DBSHOTGUN'] = 350, -- Example price
    ['WEAPON_AUTOSHOTGUN'] = 350, -- Example price
    ['WEAPON_BULLPUPSHOTGUN'] = 350, -- Example price
    ['WEAPON_SAWNOFFSHOTGUN'] = 300, -- Example price
    ['WEAPON_MILITARYRIFLE'] = 400, -- Example price
    ['WEAPON_TACTICALRIFLE'] = 400, -- Example price
    ['WEAPON_GRENADES'] = 50, -- Example price for ammo
    ['WEAPON_SMOKEGRENADE'] = 50, -- Example price for ammo
    ['WEAPON_MOLOTOV'] = 50, -- Example price for ammo
    ['WEAPON_STICKYBOMB'] = 100, -- Example price for ammo
    ['WEAPON_PROXIMITYMINE'] = 100, -- Example price for ammo
    ['WEAPON_SNOWBALL'] = 0,
    ['WEAPON_FLARE'] = 0
}

Config.ArmoryItems = {
    { label = "ammo Pistol", item = "ammo-9", price = 500 },
    { label = "Ammo", item = "ammo_pistol", price = 50 },
    { label = "Flashlight", item = "flashlight", price = 30 },
    -- Add more items as needed
}

-- Menu position
Config.MenuPosition = {
    align = 'center-left',   -- Use 'center' to center-align the menu
    x = 1.5,            -- Center horizontally
    y = 1.5             -- Center vertically
}