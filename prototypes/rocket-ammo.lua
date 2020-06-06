
for x,rocket in pairs(rocket_ammo) do
         
    table.insert(data.raw["technology"][rocket.technology].effects, { type = "unlock-recipe", recipe = rocket.name })

    data:extend(
        {
            {
                type = "recipe",
                name = rocket.name,
                enabled = false,
                energy_required = 5,
                ingredients = rocket.ingredients,
                result = rocket.name
            },
            {
                type = "ammo",
                name = rocket.name,
                icon = "__darkstar-weapons__/graphics/icons/" .. rocket.name .. ".png",
                icon_size = 64, icon_mipmaps = 4,
                ammo_type =
                {
                    category = "rocket",
                    action =
                    {
                        type = "direct",
                        action_delivery =
                        {
                            type = "projectile",
                            projectile = rocket.projectile,
                            starting_speed = 1,
                            source_effects =
                            {
                                type = "create-entity",
                                entity_name = "explosion-hit",
                            }
                        }
                    }
                },
                subgroup = "ds-rockets",
                order = rocket.order,
                stack_size = 200
            },
        }
    )

end