Police Armory Script for ESX

Overview
🚔 This script adds a fully functional police armory to your ESX-based FiveM server. It includes features such as weapon management, NPC interaction, and multilingual support. Designed for seamless integration into your police roleplay, it allows officers to access and manage their arsenal directly from the armory.

Features
🔧 Customizable Coordinates & NPCs: Set specific locations and NPC models for your armory.
🔫 Weapon Management: Configure weapon prices, attachments, and rank-based access.
💣 Ammo Management: Set prices for ammo types and add them to your armory items.
🌐 Multilingual Support: Easily switch between different languages based on player preferences.
🗨️ 3D Text and Dialogue: Interactive NPC dialogues with 3D text display.
Installation

Download the Script:
📥 Download the police_armory script from the repository.

Add to Resources Folder:
📁 Place the script folder into your resources directory.

Add to Server Config:
🛠️ Ensure you have the following line in your server.cfg file:
lua
Code kopiëren
start police_armory

Configure the Script:
⚙️ Open config.lua and set the coordinates, NPC model, and other settings as needed.
🔧 Adjust weapon prices, attachments, and other configurations.
Configuration

Edit the config.lua file to customize the armory settings:
lua
Code kopiëren
Config = {}

Config.ArmoryCoords = vector3(452.6, -980.0, 30.6)
Config.ArmoryNPC = {
    model = 's_m_y_cop_01',
    coords = vector3(438.69100952148, -983.39495849609, 33.3),
    heading = -170.0
}

-- Weapon prices
Config.WeaponPrices = {
    ['WEAPON_FLASHLIGHT'] = 0,
    ['WEAPON_STUNGUN'] = 0,
    -- Add more weapon prices here
}

-- Weapon attachments
Config.Attachments = {
    ['WEAPON_FLASHLIGHT'] = {
        ['flashlight'] = 0
    },
    -- Add more weapon attachments here
}

-- Rank weapons
Config.RankWeapons = {
    [0] = {'WEAPON_FLASHLIGHT', 'WEAPON_STUNGUN', 'WEAPON_COMBATPISTOL'},
    -- Add more ranks and weapons here
}

-- Ammo prices configuration
Config.AmmoPrices = {
    ['WEAPON_PISTOL'] = 100, -- Example price
    -- Add more ammo prices here
}

Config.ArmoryItems = {
    { label = "ammo Pistol", item = "ammo-9", price = 500 },
    { label = "Ammo", item = "ammo_pistol", price = 50 },
    { label = "Flashlight", item = "flashlight", price = 30 },
    -- Add more items as needed
}

-- Menu position
Config.MenuPosition = {
    align = 'center-left',
    x = 1.5,
    y = 1.5
}

Adding Translations
Create Locale Files:
🌍 Add your translation files under locales/. Each file should be named according to the language code (e.g., en.lua, fr.lua, etc.).

Edit Locale Files:
📝 Define the language-specific text in the locale files:

lua
Code kopiëren
Locales['en'] = {
    ['armory_menu'] = 'Armory Menu',
    ['return_weapon'] = 'Return Weapon',
    ['greeting'] = 'Hello Officer, you ready to go on duty?',
    ['instruction'] = 'Please select your armory.',
    ['safety'] = 'Safety first.'
}
Usage

Accessing the Armory:
🚪 Approach the NPC in the designated coordinates and use the interaction menu to access the armory.

Using the Armory Menu:
📜 Select weapons, manage ammo, and view items available for purchase.
Contributing

🤝 If you wish to contribute to this script, please fork the repository and submit a pull request with your changes. Ensure that your changes are well-documented and tested.

License
📝 This script is provided under the MIT License. Feel free to use and modify it as per your needs.

Contact
For any questions or support, please contact:

Name: Bjorn (CustomCodex)
Email: info@hutsakeee.nl
