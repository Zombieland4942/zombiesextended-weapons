
for x,railgun in pairs(railgun_rifle) do

    table.insert(data.raw["technology"][railgun.technology].effects, { type = "unlock-recipe", recipe = railgun.name })

    data:extend(
    {
        {
            type = "recipe",
            name = railgun.name,
            enabled = false,
            energy_required = 5,
            ingredients = railgun.ingredients,
            result = railgun.name
        },
        {
            type = "gun",
            name = railgun.name,
            icon = "__darkstar-weapons__/graphics/icons/" .. railgun.name .. ".png",
            icon_size = 64, 
            icon_mipmaps = 4,
            subgroup = "ds-railgun",
            order = railgun.order,
            attack_parameters =
            {
                type = "projectile",
                ammo_category = "railgun",
                cooldown = railgun.cooldown,
                movement_slow_down_factor = 0.6,
                projectile_creation_distance = 0.6,
                range = railgun.range,
                sound =
                {
                    {
                        filename = "__base__/sound/railgun.ogg",
                        volume = 0.5
                    }
                }
            },
            stack_size = 5
        },
    }
    )
end