Config = {}

-- Armory coordinates and NPC
Config.ArmoryCoords = vector3(452.6, -980.0, 30.6) -- Example coordinates for the armory
Config.ArmoryNPC = {
    model = 's_m_y_cop_01',
    coords = vector3(438.69100952148, -983.39495849609, 33.3), -- Example coordinates for the NPC
    heading = -170.0
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

-- Menu position
Config.MenuPosition = {
    align = 'center-left',   -- Use 'center' to center-align the menu
    x = 1.5,            -- Center horizontally
    y = 1.5             -- Center vertically
}

-- Locales
Config.Locales = {
    en = {
        ['armory'] = 'Armory',
        ['accessory'] = 'Accessories',
        ['buy'] = 'Buy',
        ['price'] = 'Price',
        ['confirm'] = 'Confirm',
        ['cancel'] = 'Cancel',
        ['no_access'] = 'You do not have access to this weapon',
        ['not_enough_money'] = 'You do not have enough money',
        ['weapon'] = 'Weapon',
        ['attachment'] = 'Attachment',
        ['quantity'] = 'Quantity',
        ['purchase_success'] = 'Purchase successful',
        ['purchase_failed'] = 'Purchase failed',
        ['no_rank'] = 'You do not have the required rank',
        ['ammo'] = 'Ammunition',
        ['ammo_quantity'] = 'Amount of ammo'
    },
    nl = {
        ['armory'] = 'Wapenmagazijn',
        ['accessory'] = 'Accessoires',
        ['buy'] = 'Kopen',
        ['price'] = 'Prijs',
        ['confirm'] = 'Bevestigen',
        ['cancel'] = 'Annuleren',
        ['no_access'] = 'Je hebt geen toegang tot dit wapen',
        ['not_enough_money'] = 'Je hebt niet genoeg geld',
        ['weapon'] = 'Wapen',
        ['attachment'] = 'Accessoire',
        ['quantity'] = 'Aantal',
        ['purchase_success'] = 'Aankoop succesvol',
        ['purchase_failed'] = 'Aankoop mislukt',
        ['no_rank'] = 'Je hebt de vereiste rang niet',
        ['ammo'] = 'Munitie',
        ['ammo_quantity'] = 'Aantal munitie'
    }
}
