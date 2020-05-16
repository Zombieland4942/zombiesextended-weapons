-- TODO Add graphics for assualt rifles

for x,ar in pairs(assault_rifle) do
    data:extend(
        {        
            {
                type = "gun",
                name = ar.name,
                icon = "__base__/graphics/icons/submachine-gun.png",
                icon_size = 64, 
                icon_mipmaps = 4,
                subgroup = "ds-assult",
                order = ar.order,
                attack_parameters =
                {
                    type = "projectile",
                    ammo_category = "bullet",
                    cooldown = ar.cooldown,
                    movement_slow_down_factor = 0.7,
                    shell_particle =
                    {
                        name = "shell-particle",
                        direction_deviation = 0.1,
                        speed = 0.1,
                        speed_deviation = 0.03,
                        center = {0, 0.1},
                        creation_distance = -0.5,
                        starting_frame_speed = 0.4,
                        starting_frame_speed_deviation = 0.1
                    },
                    projectile_creation_distance = 1.125,
                    range = ar.range,
                    sound = 
                    {
                        {
                            filename = "__base__/sound/fight/submachine-gunshot-1.ogg",
                            volume = 0.6
                        },
                        {
                            filename = "__base__/sound/fight/submachine-gunshot-2.ogg",
                            volume = 0.6
                        },
                        {
                            filename = "__base__/sound/fight/submachine-gunshot-3.ogg",
                            volume = 0.6
                        }
                    }
                },
                stack_size = 5
            }        
        }
    )
end