-- Police Armory Script for ESX (v1.10.7)
-- ========================================================================
-- Welcome to the Police Armory script, designed to enhance your ESX server
-- with a comprehensive armory system. This script is compatible with ESX
-- version 1.10.7 and integrates with `ox_target`, `ox_lib`, and `ox_inventory`.

-- Overview
-- ========================================================================
-- The Police Armory script provides a streamlined way for police officers
-- to access and manage their weapons and equipment. With this script, you
-- can easily configure armory locations, manage equipment, and ensure secure
-- access for authorized roles.

-- Features
-- ========================================================================
-- * Enhanced Armory Access: Use `ox_target` for smooth interactions.
-- * Robust Inventory Management: Integrated with `ox_inventory` for
--   efficient gear management.
-- * Advanced Library Functions: Utilizes `ox_lib` for a polished user experience.
-- * Customizable Equipment: Supports a wide range of weapons and items.
-- * Secure Access Control: Role-based permissions ensure secure management.
-- * Intuitive UI: User-friendly interface compatible with ESX.

-- Installation
-- ========================================================================
-- 1. Ensure Compatibility:
--    - Verify you are using ESX version 1.10.7.
--    - Ensure `ox_target`, `ox_lib`, and `ox_inventory` are installed
--      and properly configured.

-- 2. Download and Install:
--    - Place the `police-armory` folder in your resources directory.
--    - Update your `server.cfg` to include the following line:
--      ```
--      ensure police-armory
--      ```

-- 3. Configuration:
--    - Open `config.lua` within the `police-armory` folder.
--    - Customize armory locations, permissions, and equipment as needed.
--    - Example configuration:
--      ```lua
--      Config = {
--          ArmoryLocations = {
--              { x = 440.0, y = -980.0, z = 30.0 },
--              -- Add more locations as needed
--          },
--          Permissions = {
--              ['police'] = true,
--              -- Define other roles and permissions
--          },
--          Equipment = {
--              { name = 'weapon_pistol', label = 'Pistol' },
--              { name = 'weapon_shotgun', label = 'Shotgun' },
--              -- Add more equipment as needed
--          },
--      }
--      ```

-- 4. Restart Server:
--    - Restart your server to apply the new configuration and ensure
--      the armory script is functioning correctly.

-- Usage
-- ========================================================================
-- - Approach the armory locations configured in `config.lua`.
-- - Use the `ox_target` system to interact with the armory and access
--   the available weapons and equipment.
-- - The `ox_inventory` system will handle the inventory management,
--   allowing officers to equip and manage their gear.

-- Support and Customization
-- ========================================================================
-- For support, customization requests, or any questions, please contact
-- Bjorn (Hutsakeee) at info@hutsakeee.nl
-- I’m here to help you enhance your roleplaying experience!

-- ========================================================================
-- Thank you for using the Police Armory script! Enjoy your enhanced roleplay
-- server with streamlined armory management.