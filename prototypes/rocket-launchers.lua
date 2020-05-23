

for x,launcher in pairs(rocket_launcher) do
    data:extend(
        {
            {
                type = "gun",
                name = launcher.name,
                icon = "__base__/graphics/icons/rocket-launcher.png",
                icon_size = 64, icon_mipmaps = 4,
                subgroup = "ds-rockets",
                order = launcher.order,
                attack_parameters =
                {
                    type = "projectile",
                    ammo_category = "rocket",
                    movement_slow_down_factor = 0.8,
                    cooldown = launcher.cooldown,
                    projectile_creation_distance = 0.6,
                    range = launcher.range,
                    projectile_center = {-0.17, 0},
                    sound =
                    {
                        {
                            filename = "__base__/sound/fight/rocket-launcher.ogg",
                            volume = 0.7
                        }
                    }
                },
                stack_size = 5
            },
        }
    )

end