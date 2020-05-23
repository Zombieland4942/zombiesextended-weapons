
for x,ammo in pairs(assault_rifle_ammo) do
    data:extend(
        {
            {
                type = "ammo",
                name = ammo.name,
                icon = "__darkstar-weapons__/graphics/icons/" .. ammo.name .. ".png",
                icon_size = 64, icon_mipmaps = 4,
                ammo_type =
                {
                    category = "bullet",
                    action =
                    {
                        type = "direct",
                        action_delivery =
                        {
                            type = "instant",
                            source_effects =
                            {
                                type = "create-explosion",
                                entity_name = "explosion-gunshot"
                            },
                            target_effects =
                            {
                                {
                                    type = "create-entity",
                                    entity_name = "explosion-hit",
                                    offsets = {{0, 1}},
                                    offset_deviation = {{-0.5, -0.5}, {0.5, 0.5}}
                                },
                                {
                                    type = "damage",
                                    damage = { amount = ammo.damage_amount, type = "physical"}
                                }
                            }
                        }
                    }
                },
                magazine_size = 100,
                subgroup = "ds-assult",
                order = ammo.order,
                stack_size = 200
            }
        }
    )
end