-- TODO Add graphics for sniper rifles
data:extend(
{        
    {
        type = "gun",
        name = "sniper-rifle-1",
        icon = "__base__/graphics/icons/submachine-gun.png",
        icon_size = 64, icon_mipmaps = 4,
        subgroup = "ds-sniper",
        order = "a",
        attack_parameters =
        {
            type = "projectile",
            ammo_category = "sniper-round",
            cooldown = 20,
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
            range = 60,
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
    },
    {
        type = "gun",
        name = "sniper-rifle-2",
        icon = "__base__/graphics/icons/submachine-gun.png",
        icon_size = 64, icon_mipmaps = 4,
        subgroup = "ds-sniper",
        order = "b",
        attack_parameters =
        {
            type = "projectile",
            ammo_category = "sniper-round",
            cooldown = 15,
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
            range = 90,
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