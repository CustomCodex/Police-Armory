

RegisterCommand('ammo', function()
    lib.showContext('ammo')
  end)


-- ammo menu
RegisterNetEvent('police-ammo:client:openpoliceammo', function(args)
lib.registerContext({
    id = 'ammo',
    title = 'Ammo menu',  
    options = {
         {
            title = "Pistol ammo",
            icon = "gun",
            onSelect = function()
                TriggerServerEvent('police-ammo:pistolammo')
               end
             },
            {
                title = "Shotgun ammo",
                icon = "gun",
                onSelect = function()
                  TriggerServerEvent('police-ammo:shotgunammo')
              end
            },
            {
                title = "Rifle ammo",
                icon = "gun",
                onSelect = function()
                  TriggerServerEvent('police-ammo:rifleammo')
              end
            },
            {
                title = "Smg ammo",
                icon = "gun",
                onSelect = function()
                  TriggerServerEvent('police-ammo:ammosmg')
              end
            }
        }
  })
  lib.showContext('ammo')
end)







